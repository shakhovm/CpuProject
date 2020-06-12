/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Multiplexer_4                                                **
 **                                                                          **
 ******************************************************************************/

module Multiplexer_4( Enable,
                      MuxIn_0,
                      MuxIn_1,
                      MuxIn_2,
                      MuxIn_3,
                      Sel,
                      MuxOut);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Enable;
   input  MuxIn_0;
   input  MuxIn_1;
   input  MuxIn_2;
   input  MuxIn_3;
   input[1:0]  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output MuxOut;

   /***************************************************************************
    ** Here the internal registers are defined                               **
    ***************************************************************************/
   reg s_selected_vector;

   assign MuxOut = s_selected_vector;

   always @(*)
   begin
      if (~Enable) s_selected_vector <= 0;
      else case (Sel)
         2'b00:
            s_selected_vector <= MuxIn_0;
         2'b01:
            s_selected_vector <= MuxIn_1;
         2'b10:
            s_selected_vector <= MuxIn_2;
         default:
            s_selected_vector <= MuxIn_3;
      endcase
   end

endmodule
