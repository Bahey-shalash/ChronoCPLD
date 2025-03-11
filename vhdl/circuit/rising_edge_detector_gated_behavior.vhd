--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : rising_edge_detector_gated                                   ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF rising_edge_detector_gated IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT D_FLIPFLOP
         GENERIC ( invertClockEnable : INTEGER );
         PORT ( clock  : IN  std_logic;
                d      : IN  std_logic;
                preset : IN  std_logic;
                reset  : IN  std_logic;
                tick   : IN  std_logic;
                q      : OUT std_logic;
                qBar   : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimNet0 : std_logic;
   SIGNAL s_logisimNet1 : std_logic;
   SIGNAL s_logisimNet2 : std_logic;
   SIGNAL s_logisimNet3 : std_logic;
   SIGNAL s_logisimNet4 : std_logic;
   SIGNAL s_logisimNet5 : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet0 <= inputt;
   s_logisimNet1 <= Reset;
   s_logisimNet4 <= CLk;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   outttt <= s_logisimNet2;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet0,
                 input2 => s_logisimNet3,
                 result => s_logisimNet2 );

   MEMORY_2 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet4,
                 d      => s_logisimNet0,
                 preset => '0',
                 q      => s_logisimNet5,
                 qBar   => s_logisimNet3,
                 reset  => s_logisimNet1,
                 tick   => '1' );


END platformIndependent;
