/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Registers                                                    **
 **                                                                          **
 ******************************************************************************/

module Registers( A,
                  B,
                  data,
                  to,
                  w,
                  Output_bus_1,
                  Output_bus_2,
                  Output_bus_3,
                  Output_bus_4,
                  Output_bus_5,
                  r0,
                  r1,
                  r2,
                  r3,
                  r4);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  A;
   input[3:0]  B;
   input[3:0]  data;
   input[3:0]  to;
   input  w;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] Output_bus_1;
   output[3:0] Output_bus_2;
   output[3:0] Output_bus_3;
   output[3:0] Output_bus_4;
   output[3:0] Output_bus_5;
   output[3:0] r0;
   output[3:0] r1;
   output[3:0] r2;
   output[3:0] r3;
   output[3:0] r4;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_11;
   wire[3:0] s_LOGISIM_BUS_12;
   wire[3:0] s_LOGISIM_BUS_15;
   wire[3:0] s_LOGISIM_BUS_16;
   wire[3:0] s_LOGISIM_BUS_18;
   wire[3:0] s_LOGISIM_BUS_19;
   wire[3:0] s_LOGISIM_BUS_20;
   wire[3:0] s_LOGISIM_BUS_21;
   wire[3:0] s_LOGISIM_BUS_22;
   wire[3:0] s_LOGISIM_BUS_24;
   wire[3:0] s_LOGISIM_BUS_4;
   wire[3:0] s_LOGISIM_BUS_5;
   wire[3:0] s_LOGISIM_BUS_7;
   wire[3:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_14                   = w;
   assign s_LOGISIM_BUS_22[3:0]              = B;
   assign s_LOGISIM_BUS_8[3:0]               = data;
   assign s_LOGISIM_BUS_24[3:0]              = A;
   assign s_LOGISIM_BUS_5[3:0]               = to;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign r4                                 = s_LOGISIM_BUS_21[3:0];
   assign r0                                 = s_LOGISIM_BUS_7[3:0];
   assign r2                                 = s_LOGISIM_BUS_4[3:0];
   assign Output_bus_4                       = s_LOGISIM_BUS_11[3:0];
   assign Output_bus_1                       = s_LOGISIM_BUS_15[3:0];
   assign Output_bus_2                       = s_LOGISIM_BUS_16[3:0];
   assign r1                                 = s_LOGISIM_BUS_19[3:0];
   assign r3                                 = s_LOGISIM_BUS_20[3:0];
   assign Output_bus_3                       = s_LOGISIM_BUS_18[3:0];
   assign Output_bus_5                       = s_LOGISIM_BUS_12[3:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_bus_8 #(.NrOfBits(4))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_7[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_19[3:0]),
             .MuxIn_2(s_LOGISIM_BUS_4[3:0]),
             .MuxIn_3(s_LOGISIM_BUS_20[3:0]),
             .MuxIn_4(s_LOGISIM_BUS_18[3:0]),
             .MuxIn_5(s_LOGISIM_BUS_11[3:0]),
             .MuxIn_6(s_LOGISIM_BUS_12[3:0]),
             .MuxIn_7(s_LOGISIM_BUS_21[3:0]),
             .MuxOut(s_LOGISIM_BUS_15[3:0]),
             .Sel(s_LOGISIM_BUS_24[2:0]));

   Multiplexer_bus_8 #(.NrOfBits(4))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_7[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_19[3:0]),
             .MuxIn_2(s_LOGISIM_BUS_4[3:0]),
             .MuxIn_3(s_LOGISIM_BUS_20[3:0]),
             .MuxIn_4(s_LOGISIM_BUS_18[3:0]),
             .MuxIn_5(s_LOGISIM_BUS_11[3:0]),
             .MuxIn_6(s_LOGISIM_BUS_12[3:0]),
             .MuxIn_7(s_LOGISIM_BUS_21[3:0]),
             .MuxOut(s_LOGISIM_BUS_16[3:0]),
             .Sel(s_LOGISIM_BUS_22[2:0]));

   Demultiplexer_8      DEMUX_1 (.DemuxIn(s_LOGISIM_NET_14),
                                 .DemuxOut_0(s_LOGISIM_NET_9),
                                 .DemuxOut_1(s_LOGISIM_NET_3),
                                 .DemuxOut_2(s_LOGISIM_NET_10),
                                 .DemuxOut_3(s_LOGISIM_NET_6),
                                 .DemuxOut_4(s_LOGISIM_NET_2),
                                 .DemuxOut_5(s_LOGISIM_NET_0),
                                 .DemuxOut_6(s_LOGISIM_NET_13),
                                 .DemuxOut_7(s_LOGISIM_NET_1),
                                 .Enable(1'b1),
                                 .Sel(s_LOGISIM_BUS_5[2:0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   MyTrigger      MyTrigger_8 (.Clock(s_LOGISIM_NET_1),
                               .InputData(s_LOGISIM_BUS_8[3:0]),
                               .OutData(s_LOGISIM_BUS_21[3:0]));

   MyTrigger      MyTrigger_7 (.Clock(s_LOGISIM_NET_13),
                               .InputData(s_LOGISIM_BUS_8[3:0]),
                               .OutData(s_LOGISIM_BUS_12[3:0]));

   MyTrigger      MyTrigger_6 (.Clock(s_LOGISIM_NET_0),
                               .InputData(s_LOGISIM_BUS_8[3:0]),
                               .OutData(s_LOGISIM_BUS_11[3:0]));

   MyTrigger      MyTrigger_5 (.Clock(s_LOGISIM_NET_2),
                               .InputData(s_LOGISIM_BUS_8[3:0]),
                               .OutData(s_LOGISIM_BUS_18[3:0]));

   MyTrigger      MyTrigger_1 (.Clock(s_LOGISIM_NET_9),
                               .InputData(s_LOGISIM_BUS_8[3:0]),
                               .OutData(s_LOGISIM_BUS_7[3:0]));

   MyTrigger      MyTrigger_3 (.Clock(s_LOGISIM_NET_10),
                               .InputData(s_LOGISIM_BUS_8[3:0]),
                               .OutData(s_LOGISIM_BUS_4[3:0]));

   MyTrigger      MyTrigger_4 (.Clock(s_LOGISIM_NET_6),
                               .InputData(s_LOGISIM_BUS_8[3:0]),
                               .OutData(s_LOGISIM_BUS_20[3:0]));

   MyTrigger      MyTrigger_2 (.Clock(s_LOGISIM_NET_3),
                               .InputData(s_LOGISIM_BUS_8[3:0]),
                               .OutData(s_LOGISIM_BUS_19[3:0]));



endmodule
