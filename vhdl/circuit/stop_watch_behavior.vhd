--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : stop_watch                                                   ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF stop_watch IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT seven_segment_display_decoder
         PORT ( logisimClockTree0  : IN  std_logic_vector( 4 DOWNTO 0 );
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
                w                  : IN  std_logic;
                x                  : IN  std_logic;
                y                  : IN  std_logic;
                z                  : IN  std_logic;
                a                  : OUT std_logic;
                b                  : OUT std_logic;
                c                  : OUT std_logic;
                d                  : OUT std_logic;
                e                  : OUT std_logic;
                f                  : OUT std_logic;
                g                  : OUT std_logic );
      END COMPONENT;

      COMPONENT counter05
         PORT ( CLK                : IN  std_logic;
                Enable             : IN  std_logic;
                Reset              : IN  std_logic;
                increment          : IN  std_logic;
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
                cout               : OUT std_logic );
      END COMPONENT;

      COMPONENT counter09
         PORT ( CLK                : IN  std_logic;
                Enable             : IN  std_logic;
                Reset              : IN  std_logic;
                increment          : IN  std_logic;
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
                cout               : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus19 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus31 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus35 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus40 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus47 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus57 : std_logic_vector( 6 DOWNTO 0 );
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
   SIGNAL s_logisimNet32 : std_logic;
   SIGNAL s_logisimNet33 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet42 : std_logic;
   SIGNAL s_logisimNet43 : std_logic;
   SIGNAL s_logisimNet44 : std_logic;
   SIGNAL s_logisimNet45 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet48 : std_logic;
   SIGNAL s_logisimNet49 : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet50 : std_logic;
   SIGNAL s_logisimNet51 : std_logic;
   SIGNAL s_logisimNet52 : std_logic;
   SIGNAL s_logisimNet53 : std_logic;
   SIGNAL s_logisimNet54 : std_logic;
   SIGNAL s_logisimNet55 : std_logic;
   SIGNAL s_logisimNet56 : std_logic;
   SIGNAL s_logisimNet58 : std_logic;
   SIGNAL s_logisimNet59 : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet60 : std_logic;
   SIGNAL s_logisimNet61 : std_logic;
   SIGNAL s_logisimNet62 : std_logic;
   SIGNAL s_logisimNet63 : std_logic;
   SIGNAL s_logisimNet64 : std_logic;
   SIGNAL s_logisimNet65 : std_logic;
   SIGNAL s_logisimNet66 : std_logic;
   SIGNAL s_logisimNet67 : std_logic;
   SIGNAL s_logisimNet68 : std_logic;
   SIGNAL s_logisimNet69 : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet70 : std_logic;
   SIGNAL s_logisimNet71 : std_logic;
   SIGNAL s_logisimNet72 : std_logic;
   SIGNAL s_logisimNet73 : std_logic;
   SIGNAL s_logisimNet74 : std_logic;
   SIGNAL s_logisimNet75 : std_logic;
   SIGNAL s_logisimNet76 : std_logic;
   SIGNAL s_logisimNet77 : std_logic;
   SIGNAL s_logisimNet78 : std_logic;
   SIGNAL s_logisimNet79 : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet80 : std_logic;
   SIGNAL s_logisimNet81 : std_logic;
   SIGNAL s_logisimNet82 : std_logic;
   SIGNAL s_logisimNet83 : std_logic;
   SIGNAL s_logisimNet84 : std_logic;
   SIGNAL s_logisimNet85 : std_logic;
   SIGNAL s_logisimNet86 : std_logic;
   SIGNAL s_logisimNet87 : std_logic;
   SIGNAL s_logisimNet88 : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet15 <= State2;
   s_logisimNet24 <= START1_STOP0;
   s_logisimNet87 <= FASTEST_CLK;
   s_logisimNet88 <= Reset;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   display0gfedcba <= s_logisimBus31(6 DOWNTO 0);
   display1gfedcba <= s_logisimBus57(6 DOWNTO 0);
   display2gfedcba <= s_logisimBus40(6 DOWNTO 0);
   display3gfedcba <= s_logisimBus35(6 DOWNTO 0);
   display4gfedcba <= s_logisimBus19(6 DOWNTO 0);
   display5gfedcba <= s_logisimBus47(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet10  <=  '1';


   -- Constant
    s_logisimNet11  <=  '1';


   -- Constant
    s_logisimNet2  <=  '1';


   -- Constant
    s_logisimNet32  <=  '1';


   -- Constant
    s_logisimNet33  <=  '1';


   -- Constant
    s_logisimNet34  <=  '1';


   -- Do not connect

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet24,
                 input2 => s_logisimNet15,
                 result => s_logisimNet7 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   seven_segment_display_decoder_1 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus31(0),
                 b                  => s_logisimBus31(1),
                 c                  => s_logisimBus31(2),
                 d                  => s_logisimBus31(3),
                 e                  => s_logisimBus31(4),
                 f                  => s_logisimBus31(5),
                 g                  => s_logisimBus31(6),
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
                 w                  => s_logisimNet38,
                 x                  => s_logisimNet5,
                 y                  => s_logisimNet39,
                 z                  => s_logisimNet6 );

   seven_segment_display_decoder_4 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus35(0),
                 b                  => s_logisimBus35(1),
                 c                  => s_logisimBus35(2),
                 d                  => s_logisimBus35(3),
                 e                  => s_logisimBus35(4),
                 f                  => s_logisimBus35(5),
                 g                  => s_logisimBus35(6),
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
                 w                  => s_logisimNet25,
                 x                  => s_logisimNet52,
                 y                  => s_logisimNet26,
                 z                  => s_logisimNet53 );

   seven_segment_display_decoder_6 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus47(0),
                 b                  => s_logisimBus47(1),
                 c                  => s_logisimBus47(2),
                 d                  => s_logisimBus47(3),
                 e                  => s_logisimBus47(4),
                 f                  => s_logisimBus47(5),
                 g                  => s_logisimBus47(6),
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
                 w                  => s_logisimNet36,
                 x                  => s_logisimNet3,
                 y                  => s_logisimNet37,
                 z                  => s_logisimNet4 );

   seven_segment_display_decoder_3 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus40(0),
                 b                  => s_logisimBus40(1),
                 c                  => s_logisimBus40(2),
                 d                  => s_logisimBus40(3),
                 e                  => s_logisimBus40(4),
                 f                  => s_logisimBus40(5),
                 g                  => s_logisimBus40(6),
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
                 w                  => s_logisimNet48,
                 x                  => s_logisimNet20,
                 y                  => s_logisimNet49,
                 z                  => s_logisimNet21 );

   seven_segment_display_decoder_5 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus19(0),
                 b                  => s_logisimBus19(1),
                 c                  => s_logisimBus19(2),
                 d                  => s_logisimBus19(3),
                 e                  => s_logisimBus19(4),
                 f                  => s_logisimBus19(5),
                 g                  => s_logisimBus19(6),
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
                 w                  => s_logisimNet51,
                 x                  => s_logisimNet23,
                 y                  => s_logisimNet50,
                 z                  => s_logisimNet22 );

   seven_segment_display_decoder_2 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus57(0),
                 b                  => s_logisimBus57(1),
                 c                  => s_logisimBus57(2),
                 d                  => s_logisimBus57(3),
                 e                  => s_logisimBus57(4),
                 f                  => s_logisimBus57(5),
                 g                  => s_logisimBus57(6),
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
                 w                  => s_logisimNet16,
                 x                  => s_logisimNet45,
                 y                  => s_logisimNet17,
                 z                  => s_logisimNet46 );

   counter05_2 : counter05
      PORT MAP ( CLK                => s_logisimNet87,
                 D0                 => s_logisimNet36,
                 D1                 => s_logisimNet3,
                 D2                 => s_logisimNet37,
                 D3                 => s_logisimNet4,
                 Enable             => s_logisimNet8,
                 Reset              => s_logisimNet88,
                 cout               => s_logisimNet58,
                 increment          => s_logisimNet11,
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

   counter09_3 : counter09
      PORT MAP ( CLK                => s_logisimNet87,
                 D0                 => s_logisimNet48,
                 D1                 => s_logisimNet20,
                 D2                 => s_logisimNet49,
                 D3                 => s_logisimNet21,
                 Enable             => s_logisimNet1,
                 Reset              => s_logisimNet88,
                 cout               => s_logisimNet9,
                 increment          => s_logisimNet32,
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

   counter05_1 : counter05
      PORT MAP ( CLK                => s_logisimNet87,
                 D0                 => s_logisimNet25,
                 D1                 => s_logisimNet52,
                 D2                 => s_logisimNet26,
                 D3                 => s_logisimNet53,
                 Enable             => s_logisimNet9,
                 Reset              => s_logisimNet88,
                 cout               => s_logisimNet0,
                 increment          => s_logisimNet33,
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

   counter09_4 : counter09
      PORT MAP ( CLK                => s_logisimNet87,
                 D0                 => s_logisimNet51,
                 D1                 => s_logisimNet23,
                 D2                 => s_logisimNet50,
                 D3                 => s_logisimNet22,
                 Enable             => s_logisimNet0,
                 Reset              => s_logisimNet88,
                 cout               => s_logisimNet8,
                 increment          => s_logisimNet10,
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

   counter09_1 : counter09
      PORT MAP ( CLK                => s_logisimNet87,
                 D0                 => s_logisimNet38,
                 D1                 => s_logisimNet5,
                 D2                 => s_logisimNet39,
                 D3                 => s_logisimNet6,
                 Enable             => s_logisimNet7,
                 Reset              => s_logisimNet88,
                 cout               => s_logisimNet18,
                 increment          => s_logisimNet2,
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

   counter09_2 : counter09
      PORT MAP ( CLK                => s_logisimNet87,
                 D0                 => s_logisimNet16,
                 D1                 => s_logisimNet45,
                 D2                 => s_logisimNet17,
                 D3                 => s_logisimNet46,
                 Enable             => s_logisimNet18,
                 Reset              => s_logisimNet88,
                 cout               => s_logisimNet1,
                 increment          => s_logisimNet34,
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
