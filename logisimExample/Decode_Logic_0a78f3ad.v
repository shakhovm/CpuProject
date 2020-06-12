/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Decode_Logic_0a78f3ad                                        **
 **                                                                          **
 ******************************************************************************/

module Decode_Logic_0a78f3ad( Bit,
                              Op,
                              Address,
                              Alu,
                              AluCarry,
                              AluLogic,
                              AluOp,
                              Digit,
                              FWright,
                              Jump);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Bit;
   input[3:0]  Op;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output Address;
   output Alu;
   output AluCarry;
   output AluLogic;
   output[3:0] AluOp;
   output Digit;
   output FWright;
   output Jump;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_7;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_7[3:0]               = Op;
   assign s_LOGISIM_NET_2                    = Bit;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Address                            = s_LOGISIM_NET_13;
   assign Jump                               = s_LOGISIM_NET_8;
   assign AluLogic                           = s_LOGISIM_NET_9;
   assign Digit                              = s_LOGISIM_NET_11;
   assign AluOp                              = s_LOGISIM_BUS_7[3:0];
   assign FWright                            = s_LOGISIM_NET_10;
   assign AluCarry                           = s_LOGISIM_NET_10;
   assign Alu                                = s_LOGISIM_NET_12;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_4),
              .Result(s_LOGISIM_NET_11));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_BUS_7[2]),
              .Input_2(s_LOGISIM_BUS_7[3]),
              .Result(s_LOGISIM_NET_8));

   Demultiplexer_16      DEMUX_1 (.DemuxIn(s_LOGISIM_NET_2),
                                  .DemuxOut_0(),
                                  .DemuxOut_1(s_LOGISIM_NET_4),
                                  .DemuxOut_10(),
                                  .DemuxOut_11(),
                                  .DemuxOut_12(),
                                  .DemuxOut_13(),
                                  .DemuxOut_14(),
                                  .DemuxOut_15(),
                                  .DemuxOut_2(s_LOGISIM_NET_0),
                                  .DemuxOut_3(s_LOGISIM_NET_5),
                                  .DemuxOut_4(s_LOGISIM_NET_9),
                                  .DemuxOut_5(),
                                  .DemuxOut_6(s_LOGISIM_NET_10),
                                  .DemuxOut_7(),
                                  .DemuxOut_8(),
                                  .DemuxOut_9(s_LOGISIM_NET_3),
                                  .Enable(1'b1),
                                  .Sel(s_LOGISIM_BUS_7[3:0]));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_9),
              .Input_2(s_LOGISIM_NET_10),
              .Input_3(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_NET_12));

   OR_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_5),
              .Result(s_LOGISIM_NET_13));



endmodule
