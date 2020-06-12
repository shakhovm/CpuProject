/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MyALU                                                        **
 **                                                                          **
 ******************************************************************************/

module MyALU( A,
              B,
              CIN,
              M,
              Op,
              A_B_bdc56332,
              AluOut,
              Sign);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  A;
   input[3:0]  B;
   input  CIN;
   input  M;
   input[3:0]  Op;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output A_B_bdc56332;
   output[3:0] AluOut;
   output Sign;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_28;
   wire[3:0] s_LOGISIM_BUS_29;
   wire[3:0] s_LOGISIM_BUS_30;
   wire[3:0] s_LOGISIM_BUS_37;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_29[3:0]              = A;
   assign s_LOGISIM_BUS_30[3:0]              = B;
   assign s_LOGISIM_BUS_37[3:0]              = Op;
   assign s_LOGISIM_NET_25                   = M;
   assign s_LOGISIM_NET_26                   = CIN;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Sign                               = s_LOGISIM_NET_0;
   assign A_B_bdc56332                       = s_LOGISIM_NET_15;
   assign AluOut                             = s_LOGISIM_BUS_28[3:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_BUS_30[2]),
                         .Result(s_LOGISIM_NET_14));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_NET_15),
                         .Result(s_LOGISIM_NET_31));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_30[0]),
                         .Result(s_LOGISIM_NET_8));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_NET_33),
                         .Result(s_LOGISIM_BUS_28[3]));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_BUS_30[1]),
                         .Result(s_LOGISIM_NET_19));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_NET_34),
                         .Result(s_LOGISIM_BUS_28[2]));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_NET_35),
                         .Result(s_LOGISIM_BUS_28[0]));

   NOT_GATE      GATE_8 (.Input_1(s_LOGISIM_BUS_29[3]),
                         .Result(s_LOGISIM_NET_6));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_BUS_29[0]),
                         .Result(s_LOGISIM_NET_5));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_BUS_29[2]),
                          .Result(s_LOGISIM_NET_7));

   AND_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_31),
               .Input_2(s_LOGISIM_NET_2),
               .Result(s_LOGISIM_NET_0));

   NOT_GATE      GATE_12 (.Input_1(s_LOGISIM_BUS_29[1]),
                          .Result(s_LOGISIM_NET_1));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_NET_36),
                          .Result(s_LOGISIM_BUS_28[1]));

   NOT_GATE      GATE_14 (.Input_1(s_LOGISIM_BUS_30[3]),
                          .Result(s_LOGISIM_NET_13));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   ALU      ALU_1 (.A1(s_LOGISIM_NET_5),
                   .A2(s_LOGISIM_NET_1),
                   .A3(s_LOGISIM_NET_7),
                   .A4(s_LOGISIM_NET_6),
                   .B1(s_LOGISIM_NET_8),
                   .B2(s_LOGISIM_NET_19),
                   .B3(s_LOGISIM_NET_14),
                   .B4(s_LOGISIM_NET_13),
                   .CIN(s_LOGISIM_NET_26),
                   .COUT(),
                   .EQ(s_LOGISIM_NET_15),
                   .G(s_LOGISIM_NET_2),
                   .M(s_LOGISIM_NET_25),
                   .P(),
                   .S1(s_LOGISIM_BUS_37[0]),
                   .S2(s_LOGISIM_BUS_37[1]),
                   .S3(s_LOGISIM_BUS_37[2]),
                   .S4(s_LOGISIM_BUS_37[3]),
                   .Y1(s_LOGISIM_NET_35),
                   .Y2(s_LOGISIM_NET_36),
                   .Y3(s_LOGISIM_NET_34),
                   .Y4(s_LOGISIM_NET_33));



endmodule
