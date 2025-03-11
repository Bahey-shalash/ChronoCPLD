--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : glitch_free_mux_v2                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF glitch_free_mux_v2 IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

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
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet0  <= CLK0;
   s_logisimNet10 <= SELECTT;
   s_logisimNet18 <= Reset;
   s_logisimNet4  <= CLK1;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   CLK_OUT <= s_logisimNet17;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- NOT Gate
   s_logisimNet13 <=  NOT s_logisimNet10;

   -- NOT Gate
   s_logisimNet15 <=  NOT s_logisimNet4;

   -- NOT Gate
   s_logisimNet8 <=  NOT s_logisimNet0;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet9,
                 input2 => s_logisimNet1,
                 result => s_logisimNet17 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet3,
                 result => s_logisimNet2 );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet13,
                 result => s_logisimNet16 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet4,
                 result => s_logisimNet9 );

   GATES_5 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet14,
                 input2 => s_logisimNet0,
                 result => s_logisimNet1 );

   MEMORY_6 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet2,
                 preset => '0',
                 q      => s_logisimNet6,
                 qBar   => OPEN,
                 reset  => s_logisimNet18,
                 tick   => logisimClockTree15(2) );

   MEMORY_7 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet16,
                 preset => '0',
                 q      => s_logisimNet11,
                 qBar   => s_logisimNet7,
                 reset  => s_logisimNet18,
                 tick   => logisimClockTree1(2) );

   MEMORY_8 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet15,
                 d      => s_logisimNet6,
                 preset => '0',
                 q      => s_logisimNet12,
                 qBar   => s_logisimNet5,
                 reset  => s_logisimNet18,
                 tick   => '1' );

   MEMORY_9 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet8,
                 d      => s_logisimNet11,
                 preset => '0',
                 q      => s_logisimNet14,
                 qBar   => s_logisimNet3,
                 reset  => s_logisimNet18,
                 tick   => '1' );


END platformIndependent;
