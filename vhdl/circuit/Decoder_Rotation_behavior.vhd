--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : Decoder_Rotation                                             ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Decoder_Rotation IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE
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

      COMPONENT bouncing_filter
         PORT ( CLK                : IN  std_logic;
                INPUT_SIGNAL       : IN  std_logic;
                RESET              : IN  std_logic;
                logisimClockTree0  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree1  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree10 : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree11 : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree12 : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree13 : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree14 : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree15 : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree16 : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree2  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree3  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree4  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree5  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree6  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree7  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree8  : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree9  : IN  std_logic_vector( 4 DOWNTO 0 );
                SIGNAL_OUT         : OUT std_logic );
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
   SIGNAL s_logisimNet19 : std_logic;
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
   s_logisimNet0  <= CHA;
   s_logisimNet1  <= Reset;
   s_logisimNet13 <= CLK;
   s_logisimNet9  <= CHB;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   CCW <= s_logisimNet18;
   CW  <= s_logisimNet17;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet11,
                 input2 => s_logisimNet3,
                 input3 => s_logisimNet4,
                 input4 => s_logisimNet6,
                 result => s_logisimNet19 );

   GATES_2 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet14,
                 input2 => s_logisimNet19,
                 result => s_logisimNet17 );

   GATES_3 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet7,
                 result => s_logisimNet18 );

   GATES_4 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet11,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet15,
                 input4 => s_logisimNet16,
                 result => s_logisimNet12 );

   GATES_5 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet16,
                 input2 => s_logisimNet11,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet5,
                 result => s_logisimNet7 );

   GATES_6 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet3,
                 input3 => s_logisimNet4,
                 input4 => s_logisimNet16,
                 result => s_logisimNet14 );

   MEMORY_7 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet10,
                 preset => '0',
                 q      => s_logisimNet11,
                 qBar   => s_logisimNet2,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree15(2) );

   MEMORY_8 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet8,
                 preset => '0',
                 q      => s_logisimNet3,
                 qBar   => s_logisimNet15,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree15(2) );

   MEMORY_9 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet11,
                 preset => '0',
                 q      => s_logisimNet4,
                 qBar   => s_logisimNet5,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree15(2) );

   MEMORY_10 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet3,
                 preset => '0',
                 q      => s_logisimNet16,
                 qBar   => s_logisimNet6,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree15(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   bouncing_filter_2 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet13,
                 INPUT_SIGNAL       => s_logisimNet9,
                 RESET              => s_logisimNet1,
                 SIGNAL_OUT         => s_logisimNet8,
                 logisimClockTree0  => logisimClockTree0,
                 logisimClockTree1  => logisimClockTree1,
                 logisimClockTree10 => logisimClockTree10,
                 logisimClockTree11 => logisimClockTree11,
                 logisimClockTree12 => logisimClockTree12,
                 logisimClockTree13 => logisimClockTree13,
                 logisimClockTree14 => logisimClockTree14,
                 logisimClockTree15 => logisimClockTree15,
                 logisimClockTree16 => logisimClockTree16,
                 logisimClockTree2  => logisimClockTree2,
                 logisimClockTree3  => logisimClockTree3,
                 logisimClockTree4  => logisimClockTree4,
                 logisimClockTree5  => logisimClockTree5,
                 logisimClockTree6  => logisimClockTree6,
                 logisimClockTree7  => logisimClockTree7,
                 logisimClockTree8  => logisimClockTree8,
                 logisimClockTree9  => logisimClockTree9 );

   bouncing_filter_1 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet13,
                 INPUT_SIGNAL       => s_logisimNet0,
                 RESET              => s_logisimNet1,
                 SIGNAL_OUT         => s_logisimNet10,
                 logisimClockTree0  => logisimClockTree0,
                 logisimClockTree1  => logisimClockTree1,
                 logisimClockTree10 => logisimClockTree10,
                 logisimClockTree11 => logisimClockTree11,
                 logisimClockTree12 => logisimClockTree12,
                 logisimClockTree13 => logisimClockTree13,
                 logisimClockTree14 => logisimClockTree14,
                 logisimClockTree15 => logisimClockTree15,
                 logisimClockTree16 => logisimClockTree16,
                 logisimClockTree2  => logisimClockTree2,
                 logisimClockTree3  => logisimClockTree3,
                 logisimClockTree4  => logisimClockTree4,
                 logisimClockTree5  => logisimClockTree5,
                 logisimClockTree6  => logisimClockTree6,
                 logisimClockTree7  => logisimClockTree7,
                 logisimClockTree8  => logisimClockTree8,
                 logisimClockTree9  => logisimClockTree9 );

END platformIndependent;
