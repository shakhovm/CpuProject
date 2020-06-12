/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ROM_CPU_123wd                                                **
 **                                                                          **
 ******************************************************************************/

module ROM_CPU_123wd( Address,
                      Data);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[7:0]  Address;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[11:0] Data;
   reg[11:0] Data;

   always @ (Address)
   begin
      case(Address)
         1 : Data = 289;
         2 : Data = 256;
         3 : Data = 278;
         4 : Data = 513;
         5 : Data = 275;
         6 : Data = 2306;
         7 : Data = 513;
         8 : Data = 2306;
         9 : Data = 272;
         10 : Data = 513;
         11 : Data = 276;
         12 : Data = 2306;
         13 : Data = 513;
         14 : Data = 277;
         15 : Data = 2306;
         16 : Data = 513;
         17 : Data = 274;
         18 : Data = 2306;
         19 : Data = 513;
         20 : Data = 273;
         21 : Data = 2306;
         22 : Data = 513;
         23 : Data = 311;
         24 : Data = 257;
         25 : Data = 96;
         26 : Data = 1635;
         27 : Data = 3120;
         28 : Data = 832;
         29 : Data = 16;
         30 : Data = 1554;
         31 : Data = 3369;
         32 : Data = 881;
         33 : Data = 1652;
         34 : Data = 3625;
         35 : Data = 81;
         36 : Data = 2386;
         37 : Data = 865;
         38 : Data = 598;
         39 : Data = 1638;
         40 : Data = 3102;
         41 : Data = 97;
         42 : Data = 2402;
         43 : Data = 612;
         44 : Data = 2306;
         45 : Data = 1655;
         46 : Data = 3097;
         default : Data = 0;
      endcase
   end

endmodule
