/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

module LogisimToplevelShell( FPGA_INPUT_PIN_0,
                             FPGA_OUTPUT_PIN_0,
                             FPGA_OUTPUT_PIN_1,
                             FPGA_OUTPUT_PIN_10,
                             FPGA_OUTPUT_PIN_11,
                             FPGA_OUTPUT_PIN_12,
                             FPGA_OUTPUT_PIN_13,
                             FPGA_OUTPUT_PIN_14,
                             FPGA_OUTPUT_PIN_15,
                             FPGA_OUTPUT_PIN_16,
                             FPGA_OUTPUT_PIN_17,
                             FPGA_OUTPUT_PIN_18,
                             FPGA_OUTPUT_PIN_19,
                             FPGA_OUTPUT_PIN_2,
                             FPGA_OUTPUT_PIN_20,
                             FPGA_OUTPUT_PIN_21,
                             FPGA_OUTPUT_PIN_22,
                             FPGA_OUTPUT_PIN_23,
                             FPGA_OUTPUT_PIN_24,
                             FPGA_OUTPUT_PIN_25,
                             FPGA_OUTPUT_PIN_26,
                             FPGA_OUTPUT_PIN_27,
                             FPGA_OUTPUT_PIN_28,
                             FPGA_OUTPUT_PIN_29,
                             FPGA_OUTPUT_PIN_3,
                             FPGA_OUTPUT_PIN_30,
                             FPGA_OUTPUT_PIN_31,
                             FPGA_OUTPUT_PIN_32,
                             FPGA_OUTPUT_PIN_33,
                             FPGA_OUTPUT_PIN_34,
                             FPGA_OUTPUT_PIN_35,
                             FPGA_OUTPUT_PIN_4,
                             FPGA_OUTPUT_PIN_5,
                             FPGA_OUTPUT_PIN_6,
                             FPGA_OUTPUT_PIN_7,
                             FPGA_OUTPUT_PIN_8,
                             FPGA_OUTPUT_PIN_9);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_INPUT_PIN_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output FPGA_OUTPUT_PIN_0;
   output FPGA_OUTPUT_PIN_1;
   output FPGA_OUTPUT_PIN_10;
   output FPGA_OUTPUT_PIN_11;
   output FPGA_OUTPUT_PIN_12;
   output FPGA_OUTPUT_PIN_13;
   output FPGA_OUTPUT_PIN_14;
   output FPGA_OUTPUT_PIN_15;
   output FPGA_OUTPUT_PIN_16;
   output FPGA_OUTPUT_PIN_17;
   output FPGA_OUTPUT_PIN_18;
   output FPGA_OUTPUT_PIN_19;
   output FPGA_OUTPUT_PIN_2;
   output FPGA_OUTPUT_PIN_20;
   output FPGA_OUTPUT_PIN_21;
   output FPGA_OUTPUT_PIN_22;
   output FPGA_OUTPUT_PIN_23;
   output FPGA_OUTPUT_PIN_24;
   output FPGA_OUTPUT_PIN_25;
   output FPGA_OUTPUT_PIN_26;
   output FPGA_OUTPUT_PIN_27;
   output FPGA_OUTPUT_PIN_28;
   output FPGA_OUTPUT_PIN_29;
   output FPGA_OUTPUT_PIN_3;
   output FPGA_OUTPUT_PIN_30;
   output FPGA_OUTPUT_PIN_31;
   output FPGA_OUTPUT_PIN_32;
   output FPGA_OUTPUT_PIN_33;
   output FPGA_OUTPUT_PIN_34;
   output FPGA_OUTPUT_PIN_35;
   output FPGA_OUTPUT_PIN_4;
   output FPGA_OUTPUT_PIN_5;
   output FPGA_OUTPUT_PIN_6;
   output FPGA_OUTPUT_PIN_7;
   output FPGA_OUTPUT_PIN_8;
   output FPGA_OUTPUT_PIN_9;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_Input_1;
   wire[3:0] s_OP;
   wire[3:0] s_r0;
   wire[3:0] s_r1;
   wire[3:0] s_r2;
   wire[3:0] s_r3;
   wire[3:0] s_r4;
   wire[3:0] s_r5;
   wire[3:0] s_r6;
   wire[3:0] s_r7;

   /***************************************************************************
    ** Here all signal adaptations are performed                             **
    ***************************************************************************/
   assign FPGA_OUTPUT_PIN_0 = s_r2[0];
   assign FPGA_OUTPUT_PIN_1 = s_r2[1];
   assign FPGA_OUTPUT_PIN_2 = s_r2[2];
   assign FPGA_OUTPUT_PIN_3 = s_r2[3];
   assign FPGA_OUTPUT_PIN_4 = s_r1[0];
   assign FPGA_OUTPUT_PIN_5 = s_r1[1];
   assign FPGA_OUTPUT_PIN_6 = s_r1[2];
   assign FPGA_OUTPUT_PIN_7 = s_r1[3];
   assign FPGA_OUTPUT_PIN_8 = s_r4[0];
   assign FPGA_OUTPUT_PIN_9 = s_r4[1];
   assign FPGA_OUTPUT_PIN_10 = s_r4[2];
   assign FPGA_OUTPUT_PIN_11 = s_r4[3];
   assign s_Input_1 = ~FPGA_INPUT_PIN_0;
   assign FPGA_OUTPUT_PIN_12 = s_r3[0];
   assign FPGA_OUTPUT_PIN_13 = s_r3[1];
   assign FPGA_OUTPUT_PIN_14 = s_r3[2];
   assign FPGA_OUTPUT_PIN_15 = s_r3[3];
   assign FPGA_OUTPUT_PIN_16 = s_OP[0];
   assign FPGA_OUTPUT_PIN_17 = s_OP[1];
   assign FPGA_OUTPUT_PIN_18 = s_OP[2];
   assign FPGA_OUTPUT_PIN_19 = s_OP[3];
   assign FPGA_OUTPUT_PIN_20 = s_r6[0];
   assign FPGA_OUTPUT_PIN_21 = s_r6[1];
   assign FPGA_OUTPUT_PIN_22 = s_r6[2];
   assign FPGA_OUTPUT_PIN_23 = s_r6[3];
   assign FPGA_OUTPUT_PIN_24 = s_r5[0];
   assign FPGA_OUTPUT_PIN_25 = s_r5[1];
   assign FPGA_OUTPUT_PIN_26 = s_r5[2];
   assign FPGA_OUTPUT_PIN_27 = s_r5[3];
   assign FPGA_OUTPUT_PIN_28 = s_r7[0];
   assign FPGA_OUTPUT_PIN_29 = s_r7[1];
   assign FPGA_OUTPUT_PIN_30 = s_r7[2];
   assign FPGA_OUTPUT_PIN_31 = s_r7[3];
   assign FPGA_OUTPUT_PIN_32 = s_r0[0];
   assign FPGA_OUTPUT_PIN_33 = s_r0[1];
   assign FPGA_OUTPUT_PIN_34 = s_r0[2];
   assign FPGA_OUTPUT_PIN_35 = s_r0[3];
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/

   /***************************************************************************
    ** Here the toplevel component is connected                              **
    ***************************************************************************/
   main      main_0 (.Input_1(s_Input_1),
                     .OP(s_OP),
                     .r0(s_r0),
                     .r1(s_r1),
                     .r2(s_r2),
                     .r3(s_r3),
                     .r4(s_r4),
                     .r5(s_r5),
                     .r6(s_r6),
                     .r7(s_r7));


endmodule
