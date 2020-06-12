--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : exampleLog                                                   ==
--== Component : LogisimToplevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF LogisimToplevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT main
      PORT ( asd                       : IN  std_logic;
             bsd                       : IN  std_logic;
             ccs                       : OUT std_logic);
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_asd                              : std_logic;
   SIGNAL s_bsd                              : std_logic;
   SIGNAL s_ccs                              : std_logic;

BEGIN
   -----------------------------------------------------------------------------
   -- Here all signal adaptations are performed                               --
   -----------------------------------------------------------------------------
   s_bsd <= FPGA_INPUT_PIN_0;
   FPGA_OUTPUT_PIN_0 <= s_ccs;
   s_asd <= FPGA_INPUT_PIN_1;
   -----------------------------------------------------------------------------
   -- Here all inlined adaptations are performed                              --
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Here the toplevel component is connected                                --
   -----------------------------------------------------------------------------
   main_0 : main
      PORT MAP ( asd                                => s_asd,
                 bsd                                => s_bsd,
                 ccs                                => s_ccs);

END PlatformIndependent;
