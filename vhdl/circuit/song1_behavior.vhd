--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : song1                                                        ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF song1 IS 

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

      COMPONENT song1_decoder
         PORT ( D0                 : IN  std_logic;
                D1                 : IN  std_logic;
                D2                 : IN  std_logic;
                D3                 : IN  std_logic;
                D4                 : IN  std_logic;
                D5                 : IN  std_logic;
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
                A4                 : OUT std_logic;
                B4                 : OUT std_logic;
                Dsharp5            : OUT std_logic;
                E4                 : OUT std_logic;
                E5                 : OUT std_logic;
                Gsharp4            : OUT std_logic;
                do4                : OUT std_logic;
                do5                : OUT std_logic;
                re5                : OUT std_logic );
      END COMPONENT;

      COMPONENT song1_64k_frequence
         PORT ( A4                 : IN  std_logic;
                B4                 : IN  std_logic;
                Dsharp5            : IN  std_logic;
                E4                 : IN  std_logic;
                E5                 : IN  std_logic;
                Gsharp4            : IN  std_logic;
                do4                : IN  std_logic;
                do5                : IN  std_logic;
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
                re5                : IN  std_logic;
                song1_note         : OUT std_logic );
      END COMPONENT;

      COMPONENT song1_fsm_transition_logic
         PORT ( C0                 : IN  std_logic;
                C1                 : IN  std_logic;
                C2                 : IN  std_logic;
                C3                 : IN  std_logic;
                C4                 : IN  std_logic;
                C5                 : IN  std_logic;
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
                D0                 : OUT std_logic;
                D1                 : OUT std_logic;
                D2                 : OUT std_logic;
                D3                 : OUT std_logic;
                D4                 : OUT std_logic;
                D5                 : OUT std_logic );
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
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
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
   s_logisimNet10 <= ON_OFF;
   s_logisimNet22 <= CLK;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   A4          <= s_logisimNet3;
   B4          <= s_logisimNet17;
   Dsharp5     <= s_logisimNet2;
   E4          <= s_logisimNet5;
   E5          <= s_logisimNet7;
   Gsharp      <= s_logisimNet0;
   do4         <= s_logisimNet15;
   do5         <= s_logisimNet19;
   pin2_buzzer <= s_logisimNet4;
   re5         <= s_logisimNet20;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- NOT Gate
   s_logisimNet1 <=  NOT s_logisimNet10;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet25,
                 input2 => s_logisimNet10,
                 result => s_logisimNet4 );

   MEMORY_2 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree14(4),
                 d      => s_logisimNet24,
                 preset => '0',
                 q      => s_logisimNet18,
                 qBar   => s_logisimNet27,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree14(2) );

   MEMORY_3 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree14(4),
                 d      => s_logisimNet14,
                 preset => '0',
                 q      => s_logisimNet21,
                 qBar   => s_logisimNet28,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree14(2) );

   MEMORY_4 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree14(4),
                 d      => s_logisimNet16,
                 preset => '0',
                 q      => s_logisimNet13,
                 qBar   => s_logisimNet26,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree14(2) );

   MEMORY_5 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree14(4),
                 d      => s_logisimNet8,
                 preset => '0',
                 q      => s_logisimNet9,
                 qBar   => s_logisimNet29,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree14(2) );

   MEMORY_6 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree14(4),
                 d      => s_logisimNet23,
                 preset => '0',
                 q      => s_logisimNet12,
                 qBar   => s_logisimNet30,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree14(2) );

   MEMORY_7 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree14(4),
                 d      => s_logisimNet6,
                 preset => '0',
                 q      => s_logisimNet11,
                 qBar   => s_logisimNet31,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree14(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   song1_decoder_1 : song1_decoder
      PORT MAP ( A4                 => s_logisimNet3,
                 B4                 => s_logisimNet17,
                 D0                 => s_logisimNet11,
                 D1                 => s_logisimNet12,
                 D2                 => s_logisimNet9,
                 D3                 => s_logisimNet13,
                 D4                 => s_logisimNet21,
                 D5                 => s_logisimNet18,
                 Dsharp5            => s_logisimNet2,
                 E4                 => s_logisimNet5,
                 E5                 => s_logisimNet7,
                 Gsharp4            => s_logisimNet0,
                 do4                => s_logisimNet15,
                 do5                => s_logisimNet19,
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
                 logisimClockTree9  => logisimClockTree9,
                 re5                => s_logisimNet20 );

   song1_64k_frequence_1 : song1_64k_frequence
      PORT MAP ( A4                 => s_logisimNet3,
                 B4                 => s_logisimNet17,
                 Dsharp5            => s_logisimNet2,
                 E4                 => s_logisimNet5,
                 E5                 => s_logisimNet7,
                 Gsharp4            => s_logisimNet0,
                 do4                => s_logisimNet15,
                 do5                => s_logisimNet19,
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
                 logisimClockTree9  => logisimClockTree9,
                 re5                => s_logisimNet20,
                 song1_note         => s_logisimNet25 );

   song1_fsm_transition_logic_1 : song1_fsm_transition_logic
      PORT MAP ( C0                 => s_logisimNet11,
                 C1                 => s_logisimNet12,
                 C2                 => s_logisimNet9,
                 C3                 => s_logisimNet13,
                 C4                 => s_logisimNet21,
                 C5                 => s_logisimNet18,
                 D0                 => s_logisimNet6,
                 D1                 => s_logisimNet23,
                 D2                 => s_logisimNet8,
                 D3                 => s_logisimNet16,
                 D4                 => s_logisimNet14,
                 D5                 => s_logisimNet24,
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
