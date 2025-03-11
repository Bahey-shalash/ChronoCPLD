--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : MP3                                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF MP3 IS 

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

      COMPONENT Multiplexer_2
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic;
                muxIn_1 : IN  std_logic;
                sel     : IN  std_logic;
                muxOut  : OUT std_logic );
      END COMPONENT;

      COMPONENT song2
         PORT ( CLk                : IN  std_logic;
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
                on_off             : IN  std_logic;
                B4                 : OUT std_logic;
                Db5                : OUT std_logic;
                E5                 : OUT std_logic;
                Fsharp5            : OUT std_logic;
                G4                 : OUT std_logic;
                pin2_buzzer        : OUT std_logic;
                re5                : OUT std_logic );
      END COMPONENT;

      COMPONENT song1
         PORT ( CLK                : IN  std_logic;
                ON_OFF             : IN  std_logic;
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
                Gsharp             : OUT std_logic;
                do4                : OUT std_logic;
                do5                : OUT std_logic;
                pin2_buzzer        : OUT std_logic;
                re5                : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus15 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus16 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus17 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus21 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus25 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus32 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet33 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet42 : std_logic;
   SIGNAL s_logisimNet43 : std_logic;
   SIGNAL s_logisimNet44 : std_logic;
   SIGNAL s_logisimNet45 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet47 : std_logic;
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
   SIGNAL s_logisimNet57 : std_logic;
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
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet0 <= logisimClockTree14(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet14 <= state_MP3;
   s_logisimNet43 <= ON_OFF_MUSIC;
   s_logisimNet6  <= SONG_SELECTOR;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   display0    <= s_logisimBus17(6 DOWNTO 0);
   display1    <= s_logisimBus25(6 DOWNTO 0);
   display2    <= s_logisimBus32(6 DOWNTO 0);
   display3    <= s_logisimBus21(6 DOWNTO 0);
   display4    <= s_logisimBus15(6 DOWNTO 0);
   display5    <= s_logisimBus16(6 DOWNTO 0);
   pin2_buzzer <= s_logisimNet47;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimBus15(3)  <=  '0';


   -- Constant
    s_logisimBus15(4)  <=  '0';


   -- Constant
    s_logisimBus15(6)  <=  '0';


   -- Constant
    s_logisimBus16(0)  <=  '0';


   -- Constant
    s_logisimBus16(1)  <=  '0';


   -- Constant
    s_logisimBus16(3)  <=  '0';


   -- Constant
    s_logisimBus16(4)  <=  '0';


   -- Constant
    s_logisimBus16(5)  <=  '0';


   -- Constant
    s_logisimBus16(6)  <=  '0';


   -- Constant
    s_logisimBus17(0)  <=  '0';


   -- Constant
    s_logisimBus17(2)  <=  '0';


   -- Constant
    s_logisimBus17(3)  <=  '0';


   -- Constant
    s_logisimBus17(5)  <=  '0';


   -- Constant
    s_logisimBus17(6)  <=  '0';


   -- Constant
    s_logisimBus25(0)  <=  '0';


   -- Constant
    s_logisimBus25(2)  <=  '0';


   -- Constant
    s_logisimBus25(3)  <=  '0';


   -- Constant
    s_logisimBus25(5)  <=  '0';


   -- Constant
    s_logisimBus25(6)  <=  '0';


   -- Constant
    s_logisimBus32(0)  <=  '0';


   -- Constant
    s_logisimBus32(1)  <=  '0';


   -- Constant
    s_logisimBus32(2)  <=  '0';


   -- Constant
    s_logisimBus32(3)  <=  '0';


   -- Constant
    s_logisimBus32(5)  <=  '0';


   -- Constant
    s_logisimBus32(6)  <=  '0';


   -- Constant
    s_logisimBus21(0)  <=  '0';


   -- Constant
    s_logisimBus21(1)  <=  '0';


   -- Constant
    s_logisimBus21(3)  <=  '0';


   -- Constant
    s_logisimBus21(4)  <=  '0';


   -- Constant
    s_logisimBus21(6)  <=  '0';


   -- Constant
    s_logisimBus15(0)  <=  '0';


   -- Constant
    s_logisimBus15(1)  <=  '0';


   -- NOT Gate
   s_logisimNet12 <=  NOT s_logisimNet6;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet40,
                 result => s_logisimNet46 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet46,
                 result => s_logisimNet42 );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet24,
                 result => s_logisimNet26 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet12,
                 result => s_logisimNet18 );

   GATES_5 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet34,
                 input2 => s_logisimNet6,
                 result => s_logisimNet28 );

   GATES_6 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet9,
                 input2 => s_logisimNet12,
                 result => s_logisimNet23 );

   GATES_7 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet19,
                 result => s_logisimNet45 );

   GATES_8 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet22,
                 input2 => s_logisimNet20,
                 result => s_logisimNet31 );

   GATES_9 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet44,
                 input2 => s_logisimNet12,
                 result => s_logisimBus15(5) );

   GATES_10 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet18,
                 input2 => s_logisimNet28,
                 result => s_logisimBus16(2) );

   GATES_11 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet30,
                 result => s_logisimBus17(1) );

   GATES_12 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet31,
                 result => s_logisimBus17(4) );

   GATES_13 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet13,
                 input2 => s_logisimNet12,
                 result => s_logisimBus25(1) );

   GATES_14 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet45,
                 result => s_logisimBus25(4) );

   GATES_15 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet42,
                 input2 => s_logisimNet26,
                 result => s_logisimBus32(4) );

   GATES_16 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimNet6,
                 result => s_logisimBus21(2) );

   GATES_17 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet33,
                 input2 => s_logisimNet6,
                 result => s_logisimBus21(5) );

   GATES_18 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet8,
                 input2 => s_logisimNet12,
                 result => s_logisimBus15(2) );

   GATES_19 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet14,
                 input2 => s_logisimNet43,
                 result => s_logisimNet11 );

   PLEXERS_20 : Multiplexer_2
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet41,
                 muxIn_1 => s_logisimNet7,
                 muxOut  => s_logisimNet47,
                 sel     => s_logisimNet6 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   song2_1 : song2
      PORT MAP ( B4                 => s_logisimNet34,
                 CLk                => s_logisimNet0,
                 Db5                => s_logisimNet30,
                 E5                 => s_logisimNet24,
                 Fsharp5            => s_logisimNet33,
                 G4                 => s_logisimNet27,
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
                 on_off             => s_logisimNet11,
                 pin2_buzzer        => s_logisimNet7,
                 re5                => s_logisimNet19 );

   song1_1 : song1
      PORT MAP ( A4                 => s_logisimNet8,
                 B4                 => s_logisimNet5,
                 CLK                => s_logisimNet0,
                 Dsharp5            => s_logisimNet13,
                 E4                 => s_logisimNet40,
                 E5                 => s_logisimNet10,
                 Gsharp             => s_logisimNet44,
                 ON_OFF             => s_logisimNet11,
                 do4                => s_logisimNet20,
                 do5                => s_logisimNet22,
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
                 pin2_buzzer        => s_logisimNet41,
                 re5                => s_logisimNet9 );

END platformIndependent;
