#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <set>
#include <bitset>
#include <fstream>
#include <streambuf>

enum Command {
    MVR, MVD, MVA, MVF, ADD = 9, SUB = 6, NOR = 10,
    JEQ = 12, JLS, JLE, JNE
};

enum ioType {
    REG, RAM_ADDR, RAM, IMMED
};

enum Flag {
    HELP, COMPILE, COMPILE_ALL, FROM_BIN, MAKE_ARRAY
};

const static std::vector<std::pair<std::string, Command>> CMD_NAMES = {
    {"mvr", MVR}, {"mvd", MVD}, {"mva", MVA}, {"mvf", MVF},
    {"add", ADD}, {"sub", SUB}, {"nor", NOR}, {"jeq", JEQ},
    {"jls", JLS}, {"jle", JLE}, {"jne", JNE}
};

typedef unsigned char byte_t;
typedef std::vector<byte_t> args_t;
typedef std::pair<ioType, byte_t> ioData_t;

std::set<Flag> getFlags(int argc, const char* argv[]);
std::vector<std::string> getParams(int argc, const char* argv[]);

std::vector<byte_t> readBytecodeFile(const std::string& path);
std::vector<byte_t> readDebugcodeFile(const std::string& path);

std::pair<std::vector<byte_t>, std::vector<byte_t>>
parseProgram(const std::string& path);

void writeBytecodeFile(const std::string& path, const std::vector<byte_t>& bytecode);
void writeDebugcodeFile(const std::string& path, const std::vector<byte_t>& debugcode);
void writeBytecodeArrayFiles(const std::string& path, const std::vector<byte_t>& bytecode);

void execProgram(const std::vector<byte_t>& bytecode,
                 const std::vector<byte_t>& debugcode);

void ltrim(std::string& s);
void rtrim(std::string& s);
void trim(std::string& s);

std::vector<std::string> split(std::string s, const std::string& delim);
ioData_t parseArg(const std::string& s, size_t addr);
byte_t pop_front(std::vector<byte_t>& bytes);


int main(int argc, const char * argv[]) {
    
    std::vector<byte_t> bytecode{}, debugcode{};
    std::string prg_name(argv[0]);
    auto flags = getFlags(argc, argv);
    auto params = getParams(argc-1, argv+1);
    if (flags.find(HELP) != std::end(flags)) {
        std::cout   << "[4BP_ASM]" << std::endl
                    << "./4bp_asm {program code} [flags]" << std::endl
                    << "-c translate program to byte code" << std::endl
                    << "-a translate program and debug data to byte code" << std::endl
                    << "-b run program from byte code. program code should be byte code and optionally debug byte code" << std::endl;
        return 0;
    }
    
    if (flags.find(FROM_BIN) == std::end(flags)) {
        auto codes = parseProgram(params[0]);
        bytecode = codes.first;
        debugcode = codes.second;
    } else {
        // from binary
        bytecode = readBytecodeFile(params[0]);
        if (params.size() == 2) {
            debugcode = readDebugcodeFile(params[1]);
        }
    }
    
    if (flags.find(COMPILE) != std::end(flags)) {
        auto pathWOExt = params[0].substr(0, params[0].find('.'));
        writeBytecodeFile(pathWOExt + ".bin", bytecode);
        writeDebugcodeFile(pathWOExt + "D.bin", debugcode);
    } else if (flags.find(MAKE_ARRAY) != std::end(flags)) {
        auto pathWOExt = params[0].substr(0, params[0].find('.'));
        writeBytecodeArrayFiles(pathWOExt + ".txt", bytecode);
    } else {
        execProgram(bytecode, debugcode);
    }
    
    return 0;
}

std::set<Flag> getFlags(int argc, const char* argv[]) {
    std::set<Flag> flags;
    for (auto i = 0; i < argc; ++i) {
        if (argv[i][0] == '-') {
            char f = argv[i][1];
            switch (f) {
                case 'h':
                    flags.insert(HELP);
                    break;
                case 'c':
                    flags.insert(COMPILE);
                    break;
                case 'a':
                    flags.insert(COMPILE_ALL);
                    break;
                case 'b':
                    flags.insert(FROM_BIN);
                    break;
                case 'm':
                    flags.insert(MAKE_ARRAY);
                    break;
                default:
                    break;
            }
        }
    }
    return flags;
}

std::vector<std::string> getParams(int argc, const char* argv[]) {
    std::vector<std::string> params;
    for (auto i = 0; i < argc; ++i) {
        if (argv[i][0] != '-') params.emplace_back(argv[i]);
    }
    return params;
}

std::vector<byte_t> readBytecodeFile(const std::string& path) {
    std::ifstream fin{path, std::ios::in | std::ios::binary};
    
    auto bytecode = std::vector<byte_t> (
                (std::istreambuf_iterator<char>(fin)),
                (std::istreambuf_iterator<char>()) );
    fin.close();
    
    auto length = bytecode.size();
    while (length--) {
        byte_t byte2cmds = pop_front(bytecode);
        byte_t cmd1, cmd2;
        cmd1 = byte2cmds >> 4;
        cmd2 = byte2cmds & 0x0f;
        bytecode.push_back(cmd1);
        bytecode.push_back(cmd2);
    }
    return bytecode;
}

std::vector<byte_t> readDebugcodeFile(const std::string& path) {
    std::ifstream fin{path, std::ios::in | std::ios::binary};
    
    auto debugcode = std::vector<byte_t> (
                (std::istreambuf_iterator<char>(fin)),
                (std::istreambuf_iterator<char>()) );
    fin.close();
    
    auto length = debugcode.size();
    while (length) {
        byte_t ptr = pop_front(debugcode);
        byte_t byte2op = pop_front(debugcode);
        byte_t op1, op2;
        op1 = byte2op >> 4;
        op2 = byte2op & 0x0f;
        debugcode.push_back(ptr);
        debugcode.push_back(op1);
        debugcode.push_back(op2);
        
        length -= 2;
    }
    return debugcode;
}

std::pair<std::vector<byte_t>, std::vector<byte_t>>
parseProgram(const std::string& path) {
    std::ifstream fs{path, std::ifstream::in};
    std::string prg_src((std::istreambuf_iterator<char>(fs)),
                     std::istreambuf_iterator<char>());
    fs.close();
    
    std::vector<std::string> cmds = split(prg_src, "\n");
    std::for_each(std::begin(cmds), std::end(cmds), trim);
    
    byte_t ptr = 0;
    std::vector<byte_t> bytecode, debugcode;
    for (size_t addr = 0; addr < cmds.size(); ++addr) {

        auto lexems = split(cmds[addr], " ");
        lexems.erase(std::remove_if(std::begin(lexems), std::end(lexems), [](auto& x) {
            return x == "";
        }), std::end(lexems));

        if (lexems.empty()) continue;

        const std::string& c = lexems.at(0);
        if (c[0] == '<' && c[c.size()-1] == '>') {
            auto type_and_args = parseArg(c.substr(1, c.size()-2), ptr);
            debugcode.push_back(ptr);
            debugcode.push_back(type_and_args.first);
            debugcode.push_back(type_and_args.second);
        }
        else {
            Command com{};
            args_t args;
            for (const auto& cmd_name : CMD_NAMES) {
                if ( cmd_name.first == c ) {
                    com = cmd_name.second;
                    break;
                }
            }
            for (auto i = 1; i < lexems.size(); ++i) {
                ioData_t arg = parseArg(lexems[i], ptr);
                args.push_back(arg.second);
            }
            bytecode.push_back(com);
            bytecode.insert(std::end(bytecode), std::begin(args), std::end(args));
            ++ptr;
        }
    }
    return std::make_pair(bytecode, debugcode);
}

void writeBytecodeFile(const std::string& path, const std::vector<byte_t>& bytecode){
    std::ofstream fout{path, std::ios::out | std::ios::binary};
    for (auto i = 0; i < bytecode.size(); i += 2) {
        byte_t last_operand = 0x0;
        if (i != bytecode.size() - 1) {
            last_operand = bytecode[i+1];
        }
        byte_t two4bits = (bytecode[i] << 4) + (last_operand & 0x0f);
        fout.write((char*)&two4bits, sizeof(byte_t));
    }
    fout.close();
}

void writeDebugcodeFile(const std::string& path, const std::vector<byte_t>& debugcode) {
    std::ofstream fout{path, std::ios::out | std::ios::binary};
    for (auto i = 0; i < debugcode.size(); i += 3) {
        fout.write((char*)&debugcode[i], sizeof(byte_t));

        byte_t last_operand = 0x0;
        if (i != debugcode.size() - 1) {
            last_operand = debugcode[i+2];
        }
        byte_t two4bits = (debugcode[i+1] << 4) + (last_operand & 0x0f);
        fout.write((char*)&two4bits, sizeof(byte_t));
    }
    fout.close();
}

void writeBytecodeArrayFiles(const std::string& path, const std::vector<byte_t>& bytecode) {
    std::ofstream fout1{"1_" + path, std::ios::out},
                  fout2{"2_" + path, std::ios::out};
    fout1 << '{'; fout2 << '{';
    for (auto i = 0; i < bytecode.size(); i += 3) {
        byte_t op = bytecode[i],
            c1 = bytecode[i+1], c2 = bytecode[i+2];
        byte_t two4bits = (op << 4) + (c1 & 0x0f);
        fout1 << std::bitset<8>(two4bits).to_string();
        fout2 << std::bitset<4>(c2).to_string();
        if (i != bytecode.size() - 3) {
            fout1 << ','; fout2 << ',';
        }
    }
    fout1 << '}'; fout2 << '}';
    fout1.close(); fout2.close();
}

void ltrim(std::string &s) {
    s.erase(s.begin(), std::find_if(s.begin(), s.end(), [](unsigned char ch) {
        return !std::isspace(ch);
    }));
}

void rtrim(std::string &s) {
    s.erase(std::find_if(s.rbegin(), s.rend(), [](unsigned char ch) {
        return !std::isspace(ch);
    }).base(), s.end());
}

void trim(std::string &s) {
    ltrim(s);
    rtrim(s);
}

std::vector<std::string> split(std::string s, const std::string& delim) {
    std::vector<std::string> res{};
    size_t pos = 0;
    std::string token;
    while ((pos = s.find(delim)) != std::string::npos) {
        token = s.substr(0, pos);
        res.push_back(token);
        s.erase(0, pos + delim.length());
    }
    res.push_back(s);
    return res;
}

ioData_t parseArg(const std::string& s, size_t addr) {
    ioData_t data{};
    if (s == "ram") {
        data = std::make_pair(RAM, 0);
    }
    else if (s[0] == 'r') {
        byte_t reg_id = std::atoi(s.substr(1).c_str());
        data = std::make_pair(REG, reg_id);
    }
    else if (s[0] == 'a') {
        byte_t ram_addr = std::atoi(s.substr(1).c_str());
        data = std::make_pair(RAM_ADDR, ram_addr);
    } else {
        byte_t val = std::atoi(s.c_str());
        data = std::make_pair(IMMED, val);
    }
    return data;
}

byte_t pop_front(std::vector<byte_t>& bytes) {
    byte_t v = bytes.front(); bytes.erase(bytes.begin());
    return v;
}

void execProgram(const std::vector<byte_t>& bytecode,
                 const std::vector<byte_t>& debugcode) {
    byte_t ram[16] = {0}, regs[16] = {0};
    bool eq = false, ls = false;
    auto execcode = bytecode;
    for (ssize_t itr = 0; itr < execcode.size() ||
                        itr == execcode.size() - 1; itr += 3) {
        
        Command cmd = (Command)execcode[itr];
        byte_t op1, op2;
        op1 = execcode[itr+1]; op2 = execcode[itr+2];
        
        switch (cmd) {
            case MVR:
                regs[op1] = regs[op2];
                break;
            case MVD:
                regs[op1] = op2;
                break;
            case MVA:
                ram[regs[op1]] = regs[op2];
                break;
            case MVF:
                regs[op1] = ram[regs[op2]];
                break;
            case ADD:
                regs[op1] = (regs[op1] + regs[op2]) & 0x0f;
                break;
            case SUB:
                regs[op1] = (regs[op1] - regs[op2]) & 0x0f;
                eq = regs[op1] == 0x0;
                ls = regs[op1] < regs[op2];
                break;
            case NOR:
                regs[op1] = ~(regs[op1] | regs[op2]) & 0x0f;
                break;
            case JEQ:
                if (eq) itr = ((op1 << 4) + (op2 & 0x0f) - 1) * 3;
                break;
            case JLS:
                if (ls) itr = ((op1 << 4) + (op2 & 0x0f) - 1) * 3;
                break;
            case JLE:
                if (eq || ls) itr = ((op1 << 4) + (op2 & 0x0f) - 1) * 3;
                break;
            case JNE:
                if (!eq) itr = ((op1 << 4) + (op2 & 0x0f) - 1) * 3;
                break;
            default:
                break;
        }
        
        byte_t cur_ptr = itr / 3 + 1;
        for (auto debug_itr = 0; debug_itr < debugcode.size(); debug_itr += 3) {
            if (debugcode[debug_itr] == cur_ptr) {
                ioType t = (ioType)debugcode[debug_itr+1];
                byte_t val = debugcode[debug_itr+2];
                switch (t) {
                    case REG:
                        std::cout << +regs[val] << std::endl;
                        break;
                    case RAM_ADDR:
                        std::cout << +ram[val] << std::endl;
                        break;
                    case RAM:
                        for (auto i = 0; i < 16; ++i) std::cout << +ram[i] << " ";
                        std::cout << std::endl;
                        break;
                    default:
                        break;
                }
            }
        }
    }
}
