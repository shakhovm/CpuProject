/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Demultiplexer_16                                             **
 **                                                                          **
 ******************************************************************************/

module Demultiplexer_16( DemuxIn,
                         Enable,
                         Sel,
                         DemuxOut_0,
                         DemuxOut_1,
                         DemuxOut_10,
                         DemuxOut_11,
                         DemuxOut_12,
                         DemuxOut_13,
                         DemuxOut_14,
                         DemuxOut_15,
                         DemuxOut_2,
                         DemuxOut_3,
                         DemuxOut_4,
                         DemuxOut_5,
                         DemuxOut_6,
                         DemuxOut_7,
                         DemuxOut_8,
                         DemuxOut_9);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  DemuxIn;
   input  Enable;
   input[3:0]  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DemuxOut_0;
   output DemuxOut_1;
   output DemuxOut_10;
   output DemuxOut_11;
   output DemuxOut_12;
   output DemuxOut_13;
   output DemuxOut_14;
   output DemuxOut_15;
   output DemuxOut_2;
   output DemuxOut_3;
   output DemuxOut_4;
   output DemuxOut_5;
   output DemuxOut_6;
   output DemuxOut_7;
   output DemuxOut_8;
   output DemuxOut_9;
   assign DemuxOut_0   = (Enable&(Sel == 4'b0000 )) ? DemuxIn : 0;
   assign DemuxOut_1   = (Enable&(Sel == 4'b0001 )) ? DemuxIn : 0;
   assign DemuxOut_2   = (Enable&(Sel == 4'b0010 )) ? DemuxIn : 0;
   assign DemuxOut_3   = (Enable&(Sel == 4'b0011 )) ? DemuxIn : 0;
   assign DemuxOut_4   = (Enable&(Sel == 4'b0100 )) ? DemuxIn : 0;
   assign DemuxOut_5   = (Enable&(Sel == 4'b0101 )) ? DemuxIn : 0;
   assign DemuxOut_6   = (Enable&(Sel == 4'b0110 )) ? DemuxIn : 0;
   assign DemuxOut_7   = (Enable&(Sel == 4'b0111 )) ? DemuxIn : 0;
   assign DemuxOut_8   = (Enable&(Sel == 4'b1000 )) ? DemuxIn : 0;
   assign DemuxOut_9   = (Enable&(Sel == 4'b1001 )) ? DemuxIn : 0;
   assign DemuxOut_10  = (Enable&(Sel == 4'b1010 )) ? DemuxIn : 0;
   assign DemuxOut_11  = (Enable&(Sel == 4'b1011 )) ? DemuxIn : 0;
   assign DemuxOut_12  = (Enable&(Sel == 4'b1100 )) ? DemuxIn : 0;
   assign DemuxOut_13  = (Enable&(Sel == 4'b1101 )) ? DemuxIn : 0;
   assign DemuxOut_14  = (Enable&(Sel == 4'b1110 )) ? DemuxIn : 0;
   assign DemuxOut_15  = (Enable&(Sel == 4'b1111 )) ? DemuxIn : 0;

endmodule
