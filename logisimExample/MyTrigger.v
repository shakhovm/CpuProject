/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MyTrigger                                                    **
 **                                                                          **
 ******************************************************************************/

module MyTrigger( Clock,
                  InputData,
                  OutData);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Clock;
   input[3:0]  InputData;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] OutData;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_0;
   wire[3:0] s_LOGISIM_BUS_1;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_2                    = Clock;
   assign s_LOGISIM_BUS_1[3:0]               = InputData;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign OutData                            = s_LOGISIM_BUS_0[3:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_3 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(4))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_3),
                       .D(s_LOGISIM_BUS_1[3:0]),
                       .Q(s_LOGISIM_BUS_0[3:0]),
                       .Reset(1'b0),
                       .Tick(1'b1));



endmodule
