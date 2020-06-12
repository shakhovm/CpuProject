/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : PC                                                           **
 **                                                                          **
 ******************************************************************************/

module PC( Clock,
           DoJump,
           A,
           B,
           command);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Clock;
   input  DoJump;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] A;
   output[3:0] B;
   output[3:0] command;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_0;
   wire[7:0] s_LOGISIM_BUS_5;
   wire[11:0] s_LOGISIM_BUS_6;
   wire[3:0] s_LOGISIM_BUS_8;
   wire[7:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_0[0]                 = s_LOGISIM_BUS_6[0];
   assign s_LOGISIM_BUS_5[0]                 = s_LOGISIM_BUS_0[0];
   assign s_LOGISIM_BUS_0[1]                 = s_LOGISIM_BUS_6[1];
   assign s_LOGISIM_BUS_5[1]                 = s_LOGISIM_BUS_0[1];
   assign s_LOGISIM_BUS_0[2]                 = s_LOGISIM_BUS_6[2];
   assign s_LOGISIM_BUS_5[2]                 = s_LOGISIM_BUS_0[2];
   assign s_LOGISIM_BUS_0[3]                 = s_LOGISIM_BUS_6[3];
   assign s_LOGISIM_BUS_5[3]                 = s_LOGISIM_BUS_0[3];
   assign s_LOGISIM_BUS_8[0]                 = s_LOGISIM_BUS_6[4];
   assign s_LOGISIM_BUS_5[4]                 = s_LOGISIM_BUS_8[0];
   assign s_LOGISIM_BUS_8[1]                 = s_LOGISIM_BUS_6[5];
   assign s_LOGISIM_BUS_5[5]                 = s_LOGISIM_BUS_8[1];
   assign s_LOGISIM_BUS_8[2]                 = s_LOGISIM_BUS_6[6];
   assign s_LOGISIM_BUS_5[6]                 = s_LOGISIM_BUS_8[2];
   assign s_LOGISIM_BUS_8[3]                 = s_LOGISIM_BUS_6[7];
   assign s_LOGISIM_BUS_5[7]                 = s_LOGISIM_BUS_8[3];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_7                    = DoJump;
   assign s_LOGISIM_NET_3                    = Clock;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign B                                  = s_LOGISIM_BUS_0[3:0];
   assign command                            = s_LOGISIM_BUS_6[11:8];
   assign A                                  = s_LOGISIM_BUS_8[3:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_BUS_6[11]),
              .Input_2(s_LOGISIM_BUS_6[10]),
              .Input_3(s_LOGISIM_NET_7),
              .Result(s_LOGISIM_NET_4));

   ROM_CPU_123wd      ROM_1 (.Address(s_LOGISIM_BUS_9[7:0]),
                             .Data(s_LOGISIM_BUS_6[11:0]));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(255),
                    .mode(0),
                    .width(8))
      COUNTER_1 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_9[7:0]),
                 .Enable(s_LOGISIM_NET_2),
                 .GlobalClock(s_LOGISIM_NET_3),
                 .LoadData(s_LOGISIM_BUS_5[7:0]),
                 .Up_n_Down(s_LOGISIM_NET_2),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_4));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_NET_4),
                         .Result(s_LOGISIM_NET_2));



endmodule
