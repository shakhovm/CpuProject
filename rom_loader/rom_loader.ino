// 22 - 53
// digital pin 2 has a pushbutton attached to it. Give it a name:
byte begin_index = 22;
byte A[] = {10, 9, 8, 7, 6, 5, 4, 3, 25, 24, 21, 23, 2, 26, 1};
byte io[] = {11, 12, 13, 15, 16, 17, 18, 19};

byte ce = 20;
byte oe = 22;
byte we = 27;
byte vcc = 28;
byte  gnd = 14;
void write_and_add(byte & pin, byte  mode, byte  strum) {
  pin += begin_index - 1;
  pinMode(pin, mode);
  digitalWrite(pin, strum);
}

void writeEnable() {
  digitalWrite(we,  LOW);
}

void writeDisable() {
  digitalWrite(we,  HIGH);
}

void outputEnable() {
  digitalWrite(oe,  LOW);
}

void outputDisable() {
  digitalWrite(oe,  HIGH);
}

void chipEnable() {
  digitalWrite(ce,  LOW);
}

void chipDisable() {
  digitalWrite(ce,  HIGH);
}

void setAddress(byte* new_address) {
  for (int i = 0;i < 15; ++i) {
    digitalWrite(A[i], new_address[i]);
  }
}

void setData(byte* new_data) {
  for (int i = 0;i < 8; ++i) {
    digitalWrite(io[i], new_data[i]);
  }
}

void change_pins(byte mode) {
   for (int i = 0;i < 8; ++i) {
    pinMode(io[i], mode);
  }
}

void write_to_address(byte* new_address, byte* new_data) {
  delay(10);
  change_pins(OUTPUT);
  setAddress(new_address);
  setData(new_data);
  delay(10);
  
  outputDisable();
  chipEnable();
  writeEnable();
  
  delay(10);
  
  chipDisable();
  writeDisable();

  delay(10);
}

byte * get_data() {
  byte* new_data = (byte*) malloc(sizeof(byte) * 8) ;
  for (int i = 0; i < 8; ++i ) {
    new_data[i] = digitalRead(io[i]);
  }
  return new_data;
}

byte* to_binary(byte number) {
  byte* new_number = (byte*)malloc(8);
  for (int i = 7; i >= 0; --i) {
    new_number[7 - i] = (number >> i) & 1;
  }
  return new_number;
}


void load_rom(byte data[], int n) {
  delay(10);
  for (int i = 0; i < n; ++i) {
      byte* current_address = to_binary(i + 1);
      byte* current_data = to_binary(data[i]);
      
      write_to_address(current_address, current_data);
      delay(10);
      readDataFromAddress(current_address);
      free(current_data);
      free(current_address);
      delay(10);
  }
  
  
}
void readDataFromAddress(byte* new_address) {
  delay(10);
  change_pins(INPUT);

  setAddress(new_address);

  writeDisable();
  outputEnable();
  chipEnable();


  delay(10);

  byte* dataRetrieved = get_data();

  outputDisable();
  chipDisable();
  
  delay(10);
  Serial.println("Reading");
  for (int i = 0; i < 8; ++i) {
      Serial.print(dataRetrieved[i]);
  }
  Serial.println(" ");
  free(dataRetrieved);
}

void setup() {
  Serial.begin(9600);
  Serial.println("Hello");
  for (int i = 0; i < 15;++i) {
    write_and_add(A[i], OUTPUT, LOW);

  }
  for (int i = 0 ;i < 8; ++i) {
    write_and_add(io[i], OUTPUT, LOW);

  }
  write_and_add(ce, OUTPUT, LOW);
  write_and_add(oe, OUTPUT, HIGH);
  write_and_add(we, OUTPUT, HIGH);
  write_and_add(vcc, OUTPUT, HIGH);
  write_and_add(gnd, OUTPUT, LOW);
  byte insts[] = {0xa0,0x00,0x10,0x10,0x80,0x20,0x40,0x30,0x40};
  load_rom(insts, sizeof(insts));
}

void loop(){
  
}
