/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ALU                                                          **
 **                                                                          **
 ******************************************************************************/

module ALU( A1,
            A2,
            A3,
            A4,
            B1,
            B2,
            B3,
            B4,
            CIN,
            M,
            S1,
            S2,
            S3,
            S4,
            COUT,
            EQ,
            G,
            P,
            Y1,
            Y2,
            Y3,
            Y4);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  A1;
   input  A2;
   input  A3;
   input  A4;
   input  B1;
   input  B2;
   input  B3;
   input  B4;
   input  CIN;
   input  M;
   input  S1;
   input  S2;
   input  S3;
   input  S4;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output COUT;
   output EQ;
   output G;
   output P;
   output Y1;
   output Y2;
   output Y3;
   output Y4;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_29                   = M;
   assign s_LOGISIM_NET_6                    = A4;
   assign s_LOGISIM_NET_31                   = A3;
   assign s_LOGISIM_NET_24                   = A1;
   assign s_LOGISIM_NET_8                    = A2;
   assign s_LOGISIM_NET_18                   = B3;
   assign s_LOGISIM_NET_22                   = S2;
   assign s_LOGISIM_NET_49                   = B4;
   assign s_LOGISIM_NET_0                    = S4;
   assign s_LOGISIM_NET_35                   = S1;
   assign s_LOGISIM_NET_39                   = CIN;
   assign s_LOGISIM_NET_9                    = S3;
   assign s_LOGISIM_NET_19                   = B1;
   assign s_LOGISIM_NET_50                   = B2;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Y2                                 = s_LOGISIM_NET_33;
   assign EQ                                 = s_LOGISIM_NET_60;
   assign Y1                                 = s_LOGISIM_NET_37;
   assign P                                  = s_LOGISIM_NET_73;
   assign G                                  = s_LOGISIM_NET_36;
   assign Y4                                 = s_LOGISIM_NET_69;
   assign Y3                                 = s_LOGISIM_NET_20;
   assign COUT                               = s_LOGISIM_NET_71;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_31),
              .Input_2(s_LOGISIM_NET_22),
              .Input_3(s_LOGISIM_NET_43),
              .Result(s_LOGISIM_NET_26));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_14),
              .Input_2(s_LOGISIM_NET_9),
              .Result(s_LOGISIM_NET_58));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_18),
              .Result(s_LOGISIM_NET_59));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_49),
              .Result(s_LOGISIM_NET_66));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_15),
              .Input_2(s_LOGISIM_NET_9),
              .Result(s_LOGISIM_NET_30));

   NOR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_54),
              .Input_2(s_LOGISIM_NET_59),
              .Input_3(s_LOGISIM_NET_56),
              .Result(s_LOGISIM_NET_53));

   NOR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_63),
              .Input_3(s_LOGISIM_NET_44),
              .Input_4(s_LOGISIM_NET_42),
              .Result(s_LOGISIM_NET_36));

   BUFFER_COMPONENT      GATE_8 (.Input_1(s_LOGISIM_NET_6),
                                 .Result(s_LOGISIM_NET_61));

   NOR_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_3),
              .Input_2(s_LOGISIM_NET_16),
              .Result(s_LOGISIM_NET_23));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_24),
               .Input_2(s_LOGISIM_NET_22),
               .Input_3(s_LOGISIM_NET_21),
               .Result(s_LOGISIM_NET_16));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_25),
               .Input_2(s_LOGISIM_NET_1),
               .Input_3(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_38));

   NOR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_7),
               .Input_2(s_LOGISIM_NET_32),
               .Input_3(s_LOGISIM_NET_11),
               .Result(s_LOGISIM_NET_34));

   AND_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_53),
               .Input_2(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_57));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_5),
               .Input_2(s_LOGISIM_NET_25),
               .Input_3(s_LOGISIM_NET_1),
               .Result(s_LOGISIM_NET_44));

   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_25),
               .Input_2(s_LOGISIM_NET_53),
               .Result(s_LOGISIM_NET_74));

   AND_GATE #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_NET_21),
               .Input_2(s_LOGISIM_NET_9),
               .Result(s_LOGISIM_NET_7));

   NOR_GATE #(.BubblesMask(0))
      GATE_17 (.Input_1(s_LOGISIM_NET_17),
               .Input_2(s_LOGISIM_NET_26),
               .Result(s_LOGISIM_NET_25));

   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_18 (.Input_1(s_LOGISIM_NET_70),
               .Input_2(s_LOGISIM_NET_28),
               .Result(s_LOGISIM_NET_37));

   NAND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_19 (.Input_1(s_LOGISIM_NET_5),
               .Input_2(s_LOGISIM_NET_25),
               .Input_3(s_LOGISIM_NET_13),
               .Input_4(s_LOGISIM_NET_23),
               .Input_5(s_LOGISIM_NET_39),
               .Result(s_LOGISIM_NET_72));

   NOR_GATE #(.BubblesMask(0))
      GATE_20 (.Input_1(s_LOGISIM_NET_27),
               .Input_2(s_LOGISIM_NET_2),
               .Result(s_LOGISIM_NET_13));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_39),
               .Input_2(s_LOGISIM_NET_23),
               .Input_3(s_LOGISIM_NET_13),
               .Input_4(s_LOGISIM_NET_25),
               .Input_5(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_41));

   BUFFER_COMPONENT      GATE_22 (.Input_1(s_LOGISIM_NET_8),
                                  .Result(s_LOGISIM_NET_40));

   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_NET_5),
               .Input_2(s_LOGISIM_NET_4),
               .Result(s_LOGISIM_NET_75));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_24 (.Input_1(s_LOGISIM_NET_18),
               .Input_2(s_LOGISIM_NET_35),
               .Input_3(s_LOGISIM_NET_31),
               .Result(s_LOGISIM_NET_17));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_25 (.Input_1(s_LOGISIM_NET_49),
               .Input_2(s_LOGISIM_NET_35),
               .Input_3(s_LOGISIM_NET_6),
               .Result(s_LOGISIM_NET_47));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_26 (.Input_1(s_LOGISIM_NET_39),
               .Input_2(s_LOGISIM_NET_23),
               .Input_3(s_LOGISIM_NET_13),
               .Input_4(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_46));

   AND_GATE #(.BubblesMask(0))
      GATE_27 (.Input_1(s_LOGISIM_NET_0),
               .Input_2(s_LOGISIM_NET_50),
               .Result(s_LOGISIM_NET_55));

   NOR_GATE #(.BubblesMask(0))
      GATE_28 (.Input_1(s_LOGISIM_NET_64),
               .Input_2(s_LOGISIM_NET_45),
               .Result(s_LOGISIM_NET_67));

   NOR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_29 (.Input_1(s_LOGISIM_NET_58),
               .Input_2(s_LOGISIM_NET_66),
               .Input_3(s_LOGISIM_NET_61),
               .Result(s_LOGISIM_NET_4));

   NOR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_30 (.Input_1(s_LOGISIM_NET_30),
               .Input_2(s_LOGISIM_NET_55),
               .Input_3(s_LOGISIM_NET_40),
               .Result(s_LOGISIM_NET_1));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_31 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_25),
               .Input_3(s_LOGISIM_NET_34),
               .Input_4(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_12));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_32 (.Input_1(s_LOGISIM_NET_8),
               .Input_2(s_LOGISIM_NET_22),
               .Input_3(s_LOGISIM_NET_15),
               .Result(s_LOGISIM_NET_2));

   AND_GATE #(.BubblesMask(0))
      GATE_33 (.Input_1(s_LOGISIM_NET_5),
               .Input_2(s_LOGISIM_NET_53),
               .Result(s_LOGISIM_NET_63));

   AND_GATE #(.BubblesMask(0))
      GATE_34 (.Input_1(s_LOGISIM_NET_0),
               .Input_2(s_LOGISIM_NET_19),
               .Result(s_LOGISIM_NET_32));

   AND_GATE #(.BubblesMask(0))
      GATE_35 (.Input_1(s_LOGISIM_NET_34),
               .Input_2(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_45));

   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_36 (.Input_1(s_LOGISIM_NET_23),
               .Input_2(s_LOGISIM_NET_34),
               .Result(s_LOGISIM_NET_70));

   NOR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_37 (.Input_1(s_LOGISIM_NET_46),
               .Input_2(s_LOGISIM_NET_51),
               .Input_3(s_LOGISIM_NET_62),
               .Result(s_LOGISIM_NET_65));

   NOR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_38 (.Input_1(s_LOGISIM_NET_41),
               .Input_2(s_LOGISIM_NET_12),
               .Input_3(s_LOGISIM_NET_38),
               .Input_4(s_LOGISIM_NET_57),
               .Result(s_LOGISIM_NET_68));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_39 (.Input_1(s_LOGISIM_NET_20),
               .Input_2(s_LOGISIM_NET_69),
               .Input_3(s_LOGISIM_NET_37),
               .Input_4(s_LOGISIM_NET_33),
               .Result(s_LOGISIM_NET_60));

   AND_GATE #(.BubblesMask(0))
      GATE_40 (.Input_1(s_LOGISIM_NET_1),
               .Input_2(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_62));

   NOT_GATE      GATE_41 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_21));

   NOT_GATE      GATE_42 (.Input_1(s_LOGISIM_NET_50),
                          .Result(s_LOGISIM_NET_15));

   NOR_GATE #(.BubblesMask(0))
      GATE_43 (.Input_1(s_LOGISIM_NET_47),
               .Input_2(s_LOGISIM_NET_52),
               .Result(s_LOGISIM_NET_5));

   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_44 (.Input_1(s_LOGISIM_NET_75),
               .Input_2(s_LOGISIM_NET_68),
               .Result(s_LOGISIM_NET_69));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_45 (.Input_1(s_LOGISIM_NET_50),
               .Input_2(s_LOGISIM_NET_35),
               .Input_3(s_LOGISIM_NET_8),
               .Result(s_LOGISIM_NET_27));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_46 (.Input_1(s_LOGISIM_NET_39),
               .Input_2(s_LOGISIM_NET_23),
               .Input_3(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_64));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_47 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_34),
               .Input_3(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_51));

   NAND_GATE #(.BubblesMask(0))
      GATE_48 (.Input_1(s_LOGISIM_NET_39),
               .Input_2(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_28));

   NOT_GATE      GATE_49 (.Input_1(s_LOGISIM_NET_49),
                          .Result(s_LOGISIM_NET_14));

   BUFFER_COMPONENT      GATE_50 (.Input_1(s_LOGISIM_NET_31),
                                  .Result(s_LOGISIM_NET_56));

   AND_GATE #(.BubblesMask(0))
      GATE_51 (.Input_1(s_LOGISIM_NET_43),
               .Input_2(s_LOGISIM_NET_9),
               .Result(s_LOGISIM_NET_54));

   NOT_GATE      GATE_52 (.Input_1(s_LOGISIM_NET_18),
                          .Result(s_LOGISIM_NET_43));

   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_53 (.Input_1(s_LOGISIM_NET_74),
               .Input_2(s_LOGISIM_NET_65),
               .Result(s_LOGISIM_NET_20));

   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_54 (.Input_1(s_LOGISIM_NET_48),
               .Input_2(s_LOGISIM_NET_67),
               .Result(s_LOGISIM_NET_33));

   XOR_GATE_ONEHOT #(.BubblesMask(0))
      GATE_55 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_1),
               .Result(s_LOGISIM_NET_48));

   NAND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_56 (.Input_1(s_LOGISIM_NET_5),
               .Input_2(s_LOGISIM_NET_25),
               .Input_3(s_LOGISIM_NET_13),
               .Input_4(s_LOGISIM_NET_23),
               .Result(s_LOGISIM_NET_73));

   BUFFER_COMPONENT      GATE_57 (.Input_1(s_LOGISIM_NET_24),
                                  .Result(s_LOGISIM_NET_11));

   NOR_GATE #(.BubblesMask(0))
      GATE_58 (.Input_1(s_LOGISIM_NET_36),
               .Input_2(s_LOGISIM_NET_72),
               .Result(s_LOGISIM_NET_71));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_59 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_35),
               .Input_3(s_LOGISIM_NET_24),
               .Result(s_LOGISIM_NET_3));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_60 (.Input_1(s_LOGISIM_NET_6),
               .Input_2(s_LOGISIM_NET_22),
               .Input_3(s_LOGISIM_NET_14),
               .Result(s_LOGISIM_NET_52));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_61 (.Input_1(s_LOGISIM_NET_5),
               .Input_2(s_LOGISIM_NET_25),
               .Input_3(s_LOGISIM_NET_13),
               .Input_4(s_LOGISIM_NET_34),
               .Result(s_LOGISIM_NET_42));

   NOT_GATE      GATE_62 (.Input_1(s_LOGISIM_NET_29),
                          .Result(s_LOGISIM_NET_10));



endmodule
