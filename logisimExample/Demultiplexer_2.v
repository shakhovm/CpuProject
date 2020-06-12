/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Demultiplexer_2                                              **
 **                                                                          **
 ******************************************************************************/

module Demultiplexer_2( DemuxIn,
                        Enable,
                        Sel,
                        DemuxOut_0,
                        DemuxOut_1);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  DemuxIn;
   input  Enable;
   input  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DemuxOut_0;
   output DemuxOut_1;
   assign DemuxOut_0   = (Enable&(Sel == 1'b0 )) ? DemuxIn : 0;
   assign DemuxOut_1   = (Enable&(Sel == 1'b1 )) ? DemuxIn : 0;

endmodule
