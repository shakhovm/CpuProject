/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MyRam                                                        **
 **                                                                          **
 ******************************************************************************/

module MyRam( Input_bus_1,
              Input_bus_2,
              w,
              Output_bus_1,
              Output_bus_2,
              Output_bus_3,
              Output_bus_4,
              Output_bus_5,
              Output_bus_6,
              Output_bus_7,
              Output_bus_8,
              Output_bus_9);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  Input_bus_1;
   input[3:0]  Input_bus_2;
   input  w;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] Output_bus_1;
   output[3:0] Output_bus_2;
   output[3:0] Output_bus_3;
   output[3:0] Output_bus_4;
   output[3:0] Output_bus_5;
   output[3:0] Output_bus_6;
   output[3:0] Output_bus_7;
   output[3:0] Output_bus_8;
   output[3:0] Output_bus_9;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_15;
   wire[3:0] s_LOGISIM_BUS_17;
   wire[3:0] s_LOGISIM_BUS_18;
   wire[3:0] s_LOGISIM_BUS_2;
   wire[3:0] s_LOGISIM_BUS_23;
   wire[3:0] s_LOGISIM_BUS_24;
   wire[3:0] s_LOGISIM_BUS_25;
   wire[3:0] s_LOGISIM_BUS_27;
   wire[3:0] s_LOGISIM_BUS_28;
   wire[3:0] s_LOGISIM_BUS_29;
   wire[3:0] s_LOGISIM_BUS_30;
   wire[3:0] s_LOGISIM_BUS_31;
   wire[3:0] s_LOGISIM_BUS_32;
   wire[3:0] s_LOGISIM_BUS_33;
   wire[3:0] s_LOGISIM_BUS_34;
   wire[3:0] s_LOGISIM_BUS_35;
   wire[3:0] s_LOGISIM_BUS_4;
   wire[3:0] s_LOGISIM_BUS_7;
   wire[3:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_35[3:0]              = Input_bus_2;
   assign s_LOGISIM_BUS_29[3:0]              = Input_bus_1;
   assign s_LOGISIM_NET_1                    = w;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Output_bus_1                       = s_LOGISIM_BUS_2[3:0];
   assign Output_bus_2                       = s_LOGISIM_BUS_23[3:0];
   assign Output_bus_3                       = s_LOGISIM_BUS_24[3:0];
   assign Output_bus_4                       = s_LOGISIM_BUS_32[3:0];
   assign Output_bus_5                       = s_LOGISIM_BUS_31[3:0];
   assign Output_bus_6                       = s_LOGISIM_BUS_25[3:0];
   assign Output_bus_7                       = s_LOGISIM_BUS_33[3:0];
   assign Output_bus_8                       = s_LOGISIM_BUS_30[3:0];
   assign Output_bus_9                       = s_LOGISIM_BUS_15[3:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Demultiplexer_16      DEMUX_1 (.DemuxIn(s_LOGISIM_NET_1),
                                  .DemuxOut_0(s_LOGISIM_NET_19),
                                  .DemuxOut_1(s_LOGISIM_NET_3),
                                  .DemuxOut_10(s_LOGISIM_NET_10),
                                  .DemuxOut_11(s_LOGISIM_NET_5),
                                  .DemuxOut_12(s_LOGISIM_NET_21),
                                  .DemuxOut_13(s_LOGISIM_NET_26),
                                  .DemuxOut_14(s_LOGISIM_NET_13),
                                  .DemuxOut_15(s_LOGISIM_NET_6),
                                  .DemuxOut_2(s_LOGISIM_NET_22),
                                  .DemuxOut_3(s_LOGISIM_NET_20),
                                  .DemuxOut_4(s_LOGISIM_NET_12),
                                  .DemuxOut_5(s_LOGISIM_NET_16),
                                  .DemuxOut_6(s_LOGISIM_NET_11),
                                  .DemuxOut_7(s_LOGISIM_NET_0),
                                  .DemuxOut_8(s_LOGISIM_NET_14),
                                  .DemuxOut_9(s_LOGISIM_NET_9),
                                  .Enable(1'b1),
                                  .Sel(s_LOGISIM_BUS_35[3:0]));

   Multiplexer_bus_16 #(.NrOfBits(4))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_23[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_24[3:0]),
             .MuxIn_10(s_LOGISIM_BUS_4[3:0]),
             .MuxIn_11(s_LOGISIM_BUS_34[3:0]),
             .MuxIn_12(s_LOGISIM_BUS_8[3:0]),
             .MuxIn_13(s_LOGISIM_BUS_7[3:0]),
             .MuxIn_14(s_LOGISIM_BUS_28[3:0]),
             .MuxIn_15(s_LOGISIM_BUS_18[3:0]),
             .MuxIn_2(s_LOGISIM_BUS_32[3:0]),
             .MuxIn_3(s_LOGISIM_BUS_31[3:0]),
             .MuxIn_4(s_LOGISIM_BUS_25[3:0]),
             .MuxIn_5(s_LOGISIM_BUS_33[3:0]),
             .MuxIn_6(s_LOGISIM_BUS_30[3:0]),
             .MuxIn_7(s_LOGISIM_BUS_15[3:0]),
             .MuxIn_8(s_LOGISIM_BUS_27[3:0]),
             .MuxIn_9(s_LOGISIM_BUS_17[3:0]),
             .MuxOut(s_LOGISIM_BUS_2[3:0]),
             .Sel(s_LOGISIM_BUS_35[3:0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   MyTrigger      MyTrigger_6 (.Clock(s_LOGISIM_NET_16),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_33[3:0]));

   MyTrigger      MyTrigger_12 (.Clock(s_LOGISIM_NET_5),
                                .InputData(s_LOGISIM_BUS_29[3:0]),
                                .OutData(s_LOGISIM_BUS_34[3:0]));

   MyTrigger      MyTrigger_4 (.Clock(s_LOGISIM_NET_20),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_31[3:0]));

   MyTrigger      MyTrigger_8 (.Clock(s_LOGISIM_NET_0),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_15[3:0]));

   MyTrigger      MyTrigger_7 (.Clock(s_LOGISIM_NET_11),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_30[3:0]));

   MyTrigger      MyTrigger_2 (.Clock(s_LOGISIM_NET_3),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_24[3:0]));

   MyTrigger      MyTrigger_14 (.Clock(s_LOGISIM_NET_26),
                                .InputData(s_LOGISIM_BUS_29[3:0]),
                                .OutData(s_LOGISIM_BUS_7[3:0]));

   MyTrigger      MyTrigger_11 (.Clock(s_LOGISIM_NET_10),
                                .InputData(s_LOGISIM_BUS_29[3:0]),
                                .OutData(s_LOGISIM_BUS_4[3:0]));

   MyTrigger      MyTrigger_5 (.Clock(s_LOGISIM_NET_12),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_25[3:0]));

   MyTrigger      MyTrigger_9 (.Clock(s_LOGISIM_NET_14),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_27[3:0]));

   MyTrigger      MyTrigger_13 (.Clock(s_LOGISIM_NET_21),
                                .InputData(s_LOGISIM_BUS_29[3:0]),
                                .OutData(s_LOGISIM_BUS_8[3:0]));

   MyTrigger      MyTrigger_3 (.Clock(s_LOGISIM_NET_22),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_32[3:0]));

   MyTrigger      MyTrigger_15 (.Clock(s_LOGISIM_NET_13),
                                .InputData(s_LOGISIM_BUS_29[3:0]),
                                .OutData(s_LOGISIM_BUS_28[3:0]));

   MyTrigger      MyTrigger_16 (.Clock(s_LOGISIM_NET_6),
                                .InputData(s_LOGISIM_BUS_29[3:0]),
                                .OutData(s_LOGISIM_BUS_18[3:0]));

   MyTrigger      MyTrigger_1 (.Clock(s_LOGISIM_NET_19),
                               .InputData(s_LOGISIM_BUS_29[3:0]),
                               .OutData(s_LOGISIM_BUS_23[3:0]));

   MyTrigger      MyTrigger_10 (.Clock(s_LOGISIM_NET_9),
                                .InputData(s_LOGISIM_BUS_29[3:0]),
                                .OutData(s_LOGISIM_BUS_17[3:0]));



endmodule
