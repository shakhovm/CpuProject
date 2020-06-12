/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : L_2_bit_Trigger_61c2be1b                                     **
 **                                                                          **
 ******************************************************************************/

module L_2_bit_Trigger_61c2be1b( Input_1,
                                 Input_bus_1,
                                 Output_bus_1);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Input_1;
   input[1:0]  Input_bus_1;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[1:0] Output_bus_1;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[1:0] s_LOGISIM_BUS_0;
   wire[1:0] s_LOGISIM_BUS_1;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_1[1:0]               = Input_bus_1;
   assign s_LOGISIM_NET_2                    = Input_1;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Output_bus_1                       = s_LOGISIM_BUS_0[1:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_3 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(2))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_3),
                       .D(s_LOGISIM_BUS_1[1:0]),
                       .Q(s_LOGISIM_BUS_0[1:0]),
                       .Reset(1'b0),
                       .Tick(1'b1));



endmodule
