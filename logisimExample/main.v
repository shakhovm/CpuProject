/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 ******************************************************************************/

module main( Input_1,
             OP,
             r0,
             r1,
             r2,
             r3,
             r4,
             r5,
             r6,
             r7);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Input_1;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] OP;
   output[3:0] r0;
   output[3:0] r1;
   output[3:0] r2;
   output[3:0] r3;
   output[3:0] r4;
   output[3:0] r5;
   output[3:0] r6;
   output[3:0] r7;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_0;
   wire[3:0] s_LOGISIM_BUS_10;
   wire[3:0] s_LOGISIM_BUS_11;
   wire[3:0] s_LOGISIM_BUS_13;
   wire[3:0] s_LOGISIM_BUS_16;
   wire[1:0] s_LOGISIM_BUS_20;
   wire[3:0] s_LOGISIM_BUS_21;
   wire[3:0] s_LOGISIM_BUS_23;
   wire[3:0] s_LOGISIM_BUS_24;
   wire[3:0] s_LOGISIM_BUS_25;
   wire[3:0] s_LOGISIM_BUS_26;
   wire[3:0] s_LOGISIM_BUS_27;
   wire[3:0] s_LOGISIM_BUS_28;
   wire[3:0] s_LOGISIM_BUS_29;
   wire[3:0] s_LOGISIM_BUS_30;
   wire[3:0] s_LOGISIM_BUS_31;
   wire[3:0] s_LOGISIM_BUS_35;
   wire[3:0] s_LOGISIM_BUS_36;
   wire[3:0] s_LOGISIM_BUS_37;
   wire[3:0] s_LOGISIM_BUS_38;
   wire[3:0] s_LOGISIM_BUS_39;
   wire[3:0] s_LOGISIM_BUS_4;
   wire[3:0] s_LOGISIM_BUS_43;
   wire[3:0] s_LOGISIM_BUS_45;
   wire[3:0] s_LOGISIM_BUS_46;
   wire[1:0] s_LOGISIM_BUS_50;
   wire[3:0] s_LOGISIM_BUS_52;
   wire[1:0] s_LOGISIM_BUS_6;
   wire[3:0] s_LOGISIM_BUS_8;
   wire[3:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_51;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_1                    = Input_1;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign r3                                 = s_LOGISIM_BUS_43[3:0];
   assign r2                                 = s_LOGISIM_BUS_37[3:0];
   assign r1                                 = s_LOGISIM_BUS_24[3:0];
   assign r0                                 = s_LOGISIM_BUS_31[3:0];
   assign r6                                 = s_LOGISIM_BUS_23[3:0];
   assign r4                                 = s_LOGISIM_BUS_36[3:0];
   assign r7                                 = s_LOGISIM_BUS_28[3:0];
   assign r5                                 = s_LOGISIM_BUS_30[3:0];
   assign OP                                 = s_LOGISIM_BUS_52[3:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_33 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_46[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_35[3:0]),
             .MuxOut(s_LOGISIM_BUS_27[3:0]),
             .Sel(s_LOGISIM_NET_47));

   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_NET_1),
                         .Result(s_LOGISIM_NET_14));

   Multiplexer_bus_4 #(.NrOfBits(4))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_39[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_25[3:0]),
             .MuxIn_2(s_LOGISIM_BUS_10[3:0]),
             .MuxIn_3(s_LOGISIM_BUS_39[3:0]),
             .MuxOut(s_LOGISIM_BUS_46[3:0]),
             .Sel(s_LOGISIM_BUS_20[1:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_BUS_20[1]),
              .Input_2(s_LOGISIM_BUS_20[0]),
              .Result(s_LOGISIM_NET_51));

   Demultiplexer_2      DEMUX_1 (.DemuxIn(s_LOGISIM_NET_49),
                                 .DemuxOut_0(s_LOGISIM_NET_32),
                                 .DemuxOut_1(s_LOGISIM_NET_22),
                                 .Enable(1'b1),
                                 .Sel(s_LOGISIM_NET_51));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_6[1]),
                         .Result(s_LOGISIM_NET_5));

   OR_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_BUS_6[0]),
              .Input_2(s_LOGISIM_BUS_6[1]),
              .Result(s_LOGISIM_NET_2));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_41),
              .Input_2(s_LOGISIM_NET_14),
              .Result(s_LOGISIM_NET_48));

   NOR_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_1),
              .Input_2(s_LOGISIM_NET_42),
              .Result(s_LOGISIM_NET_49));

   Multiplexer_4      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_BUS_6[1]),
                             .MuxIn_1(s_LOGISIM_BUS_6[0]),
                             .MuxIn_2(s_LOGISIM_NET_2),
                             .MuxIn_3(s_LOGISIM_NET_5),
                             .MuxOut(s_LOGISIM_NET_40),
                             .Sel(s_LOGISIM_BUS_52[1:0]));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_39[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_38[3:0]),
             .MuxOut(s_LOGISIM_BUS_4[3:0]),
             .Sel(s_LOGISIM_BUS_20[0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   L_2_bit_Trigger_61c2be1b      FF (.Input_1(s_LOGISIM_NET_48),
                                     .Input_bus_1(s_LOGISIM_BUS_50[1:0]),
                                     .Output_bus_1(s_LOGISIM_BUS_6[1:0]));

   PC      PrCount (.A(s_LOGISIM_BUS_0[3:0]),
                    .B(s_LOGISIM_BUS_25[3:0]),
                    .Clock(s_LOGISIM_NET_1),
                    .DoJump(s_LOGISIM_NET_40),
                    .command(s_LOGISIM_BUS_29[3:0]));

   Decode_Logic_0a78f3ad      Decode_Logic (.Address(s_LOGISIM_BUS_20[1]),
                                            .Alu(s_LOGISIM_NET_47),
                                            .AluCarry(s_LOGISIM_NET_34),
                                            .AluLogic(s_LOGISIM_NET_15),
                                            .AluOp(s_LOGISIM_BUS_52[3:0]),
                                            .Bit(s_LOGISIM_NET_33),
                                            .Digit(s_LOGISIM_BUS_20[0]),
                                            .FWright(s_LOGISIM_NET_41),
                                            .Jump(s_LOGISIM_NET_42),
                                            .Op(s_LOGISIM_BUS_29[3:0]));

   MyALU      MyALU_1 (.A(s_LOGISIM_BUS_38[3:0]),
                       .A_B_bdc56332(s_LOGISIM_BUS_50[1]),
                       .AluOut(s_LOGISIM_BUS_35[3:0]),
                       .B(s_LOGISIM_BUS_46[3:0]),
                       .CIN(s_LOGISIM_NET_34),
                       .M(s_LOGISIM_NET_15),
                       .Op(s_LOGISIM_BUS_52[3:0]),
                       .Sign(s_LOGISIM_BUS_50[0]));

   Registers      RegFile (.A(s_LOGISIM_BUS_0[3:0]),
                           .B(s_LOGISIM_BUS_25[3:0]),
                           .Output_bus_1(s_LOGISIM_BUS_38[3:0]),
                           .Output_bus_2(s_LOGISIM_BUS_39[3:0]),
                           .Output_bus_3(s_LOGISIM_BUS_13[3:0]),
                           .Output_bus_4(s_LOGISIM_BUS_9[3:0]),
                           .Output_bus_5(s_LOGISIM_BUS_11[3:0]),
                           .data(s_LOGISIM_BUS_27[3:0]),
                           .r0(s_LOGISIM_BUS_45[3:0]),
                           .r1(s_LOGISIM_BUS_21[3:0]),
                           .r2(s_LOGISIM_BUS_26[3:0]),
                           .r3(s_LOGISIM_BUS_16[3:0]),
                           .r4(s_LOGISIM_BUS_8[3:0]),
                           .to(s_LOGISIM_BUS_0[3:0]),
                           .w(s_LOGISIM_NET_32));

   MyRam      RAM_CPU (.Input_bus_1(s_LOGISIM_BUS_27[3:0]),
                       .Input_bus_2(s_LOGISIM_BUS_4[3:0]),
                       .Output_bus_1(s_LOGISIM_BUS_10[3:0]),
                       .Output_bus_2(s_LOGISIM_BUS_31[3:0]),
                       .Output_bus_3(s_LOGISIM_BUS_24[3:0]),
                       .Output_bus_4(s_LOGISIM_BUS_37[3:0]),
                       .Output_bus_5(s_LOGISIM_BUS_43[3:0]),
                       .Output_bus_6(s_LOGISIM_BUS_36[3:0]),
                       .Output_bus_7(s_LOGISIM_BUS_30[3:0]),
                       .Output_bus_8(s_LOGISIM_BUS_23[3:0]),
                       .Output_bus_9(s_LOGISIM_BUS_28[3:0]),
                       .w(s_LOGISIM_NET_22));



endmodule
