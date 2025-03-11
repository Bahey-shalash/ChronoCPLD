--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : game10sec                                                    ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF game10sec IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT game_logic10sec
         PORT ( Reset              : IN  std_logic;
                current_time       : IN  std_logic_vector( 23 DOWNTO 0 );
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
                start_stop         : IN  std_logic;
                display0           : OUT std_logic_vector( 6 DOWNTO 0 );
                display1           : OUT std_logic_vector( 6 DOWNTO 0 );
                display2           : OUT std_logic_vector( 6 DOWNTO 0 );
                display3           : OUT std_logic_vector( 6 DOWNTO 0 );
                display4           : OUT std_logic_vector( 6 DOWNTO 0 );
                display5           : OUT std_logic_vector( 6 DOWNTO 0 ) );
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

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus28 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus33 : std_logic_vector( 23 DOWNTO 0 );
   SIGNAL s_logisimBus38 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus44 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus45 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus51 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus9  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
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
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet32 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet42 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet47 : std_logic;
   SIGNAL s_logisimNet48 : std_logic;
   SIGNAL s_logisimNet49 : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet50 : std_logic;
   SIGNAL s_logisimNet52 : std_logic;
   SIGNAL s_logisimNet53 : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet14 <= START1_STOP0;
   s_logisimNet20 <= State7;
   s_logisimNet52 <= FASTEST_CLK;
   s_logisimNet53 <= Reset;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   display0 <= s_logisimBus51(6 DOWNTO 0);
   display1 <= s_logisimBus38(6 DOWNTO 0);
   display2 <= s_logisimBus28(6 DOWNTO 0);
   display3 <= s_logisimBus45(6 DOWNTO 0);
   display4 <= s_logisimBus44(6 DOWNTO 0);
   display5 <= s_logisimBus9(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet23  <=  '1';


   -- Constant
    s_logisimNet24  <=  '1';


   -- Constant
    s_logisimNet12  <=  '1';


   -- Constant
    s_logisimNet13  <=  '1';


   -- Constant
    s_logisimNet3  <=  '1';


   -- Constant
    s_logisimNet25  <=  '1';


   -- Do not connect

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet14,
                 input2 => s_logisimNet20,
                 result => s_logisimNet5 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   game_logic10sec_1 : game_logic10sec
      PORT MAP ( Reset              => s_logisimNet53,
                 current_time       => s_logisimBus33(23 DOWNTO 0),
                 display0           => s_logisimBus51(6 DOWNTO 0),
                 display1           => s_logisimBus38(6 DOWNTO 0),
                 display2           => s_logisimBus28(6 DOWNTO 0),
                 display3           => s_logisimBus45(6 DOWNTO 0),
                 display4           => s_logisimBus44(6 DOWNTO 0),
                 display5           => s_logisimBus9(6 DOWNTO 0),
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
                 start_stop         => s_logisimNet14 );

   counter09_3 : counter09
      PORT MAP ( CLK                => s_logisimNet52,
                 D0                 => s_logisimBus33(8),
                 D1                 => s_logisimBus33(9),
                 D2                 => s_logisimBus33(10),
                 D3                 => s_logisimBus33(11),
                 Enable             => s_logisimNet0,
                 Reset              => s_logisimNet53,
                 cout               => s_logisimNet6,
                 increment          => s_logisimNet23,
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
      PORT MAP ( CLK                => s_logisimNet52,
                 D0                 => s_logisimBus33(12),
                 D1                 => s_logisimBus33(13),
                 D2                 => s_logisimBus33(14),
                 D3                 => s_logisimBus33(15),
                 Enable             => s_logisimNet6,
                 Reset              => s_logisimNet53,
                 cout               => s_logisimNet22,
                 increment          => s_logisimNet24,
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
      PORT MAP ( CLK                => s_logisimNet52,
                 D0                 => s_logisimBus33(16),
                 D1                 => s_logisimBus33(17),
                 D2                 => s_logisimBus33(18),
                 D3                 => s_logisimBus33(19),
                 Enable             => s_logisimNet22,
                 Reset              => s_logisimNet53,
                 cout               => s_logisimNet7,
                 increment          => s_logisimNet12,
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

   counter05_2 : counter05
      PORT MAP ( CLK                => s_logisimNet52,
                 D0                 => s_logisimBus33(20),
                 D1                 => s_logisimBus33(21),
                 D2                 => s_logisimBus33(22),
                 D3                 => s_logisimBus33(23),
                 Enable             => s_logisimNet7,
                 Reset              => s_logisimNet53,
                 cout               => s_logisimNet50,
                 increment          => s_logisimNet13,
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
      PORT MAP ( CLK                => s_logisimNet52,
                 D0                 => s_logisimBus33(0),
                 D1                 => s_logisimBus33(1),
                 D2                 => s_logisimBus33(2),
                 D3                 => s_logisimBus33(3),
                 Enable             => s_logisimNet5,
                 Reset              => s_logisimNet53,
                 cout               => s_logisimNet21,
                 increment          => s_logisimNet3,
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
      PORT MAP ( CLK                => s_logisimNet52,
                 D0                 => s_logisimBus33(4),
                 D1                 => s_logisimBus33(5),
                 D2                 => s_logisimBus33(6),
                 D3                 => s_logisimBus33(7),
                 Enable             => s_logisimNet21,
                 Reset              => s_logisimNet53,
                 cout               => s_logisimNet0,
                 increment          => s_logisimNet25,
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
