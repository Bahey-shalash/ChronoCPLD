--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : time_10_sec_game_affichage                                   ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF time_10_sec_game_affichage IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

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

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus11 : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimBus16 : std_logic_vector( 23 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet32 : std_logic;
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
   SIGNAL s_logisimNet70 : std_logic;
   SIGNAL s_logisimNet71 : std_logic;
   SIGNAL s_logisimNet72 : std_logic;
   SIGNAL s_logisimNet73 : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus16(23 DOWNTO 0) <= current_time;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   displays5_1 <= s_logisimBus11(41 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   seven_segment_display_decoder_1 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus11(35),
                 b                  => s_logisimBus11(36),
                 c                  => s_logisimBus11(37),
                 d                  => s_logisimBus11(38),
                 e                  => s_logisimBus11(39),
                 f                  => s_logisimBus11(40),
                 g                  => s_logisimBus11(41),
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
                 w                  => s_logisimBus16(0),
                 x                  => s_logisimBus16(1),
                 y                  => s_logisimBus16(2),
                 z                  => s_logisimBus16(3) );

   seven_segment_display_decoder_6 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus11(0),
                 b                  => s_logisimBus11(1),
                 c                  => s_logisimBus11(2),
                 d                  => s_logisimBus11(3),
                 e                  => s_logisimBus11(4),
                 f                  => s_logisimBus11(5),
                 g                  => s_logisimBus11(6),
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
                 w                  => s_logisimBus16(20),
                 x                  => s_logisimBus16(21),
                 y                  => s_logisimBus16(22),
                 z                  => s_logisimBus16(23) );

   seven_segment_display_decoder_2 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus11(28),
                 b                  => s_logisimBus11(29),
                 c                  => s_logisimBus11(30),
                 d                  => s_logisimBus11(31),
                 e                  => s_logisimBus11(32),
                 f                  => s_logisimBus11(33),
                 g                  => s_logisimBus11(34),
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
                 w                  => s_logisimBus16(4),
                 x                  => s_logisimBus16(5),
                 y                  => s_logisimBus16(6),
                 z                  => s_logisimBus16(7) );

   seven_segment_display_decoder_3 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus11(21),
                 b                  => s_logisimBus11(22),
                 c                  => s_logisimBus11(23),
                 d                  => s_logisimBus11(24),
                 e                  => s_logisimBus11(25),
                 f                  => s_logisimBus11(26),
                 g                  => s_logisimBus11(27),
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
                 w                  => s_logisimBus16(8),
                 x                  => s_logisimBus16(9),
                 y                  => s_logisimBus16(10),
                 z                  => s_logisimBus16(11) );

   seven_segment_display_decoder_4 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus11(14),
                 b                  => s_logisimBus11(15),
                 c                  => s_logisimBus11(16),
                 d                  => s_logisimBus11(17),
                 e                  => s_logisimBus11(18),
                 f                  => s_logisimBus11(19),
                 g                  => s_logisimBus11(20),
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
                 w                  => s_logisimBus16(12),
                 x                  => s_logisimBus16(13),
                 y                  => s_logisimBus16(14),
                 z                  => s_logisimBus16(15) );

   seven_segment_display_decoder_5 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus11(7),
                 b                  => s_logisimBus11(8),
                 c                  => s_logisimBus11(9),
                 d                  => s_logisimBus11(10),
                 e                  => s_logisimBus11(11),
                 f                  => s_logisimBus11(12),
                 g                  => s_logisimBus11(13),
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
                 w                  => s_logisimBus16(16),
                 x                  => s_logisimBus16(17),
                 y                  => s_logisimBus16(18),
                 z                  => s_logisimBus16(19) );

END platformIndependent;
