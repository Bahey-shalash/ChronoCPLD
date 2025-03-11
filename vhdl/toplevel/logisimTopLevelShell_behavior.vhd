--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF logisimTopLevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
      COMPONENT logisimTickGenerator
         GENERIC ( nrOfBits    : INTEGER;
                   reloadValue : INTEGER );
         PORT ( FPGAClock : IN  std_logic;
                FPGATick  : OUT std_logic );
      END COMPONENT;

      COMPONENT LogisimClockComponent
         GENERIC ( highTicks : INTEGER;
                   lowTicks  : INTEGER;
                   nrOfBits  : INTEGER;
                   phase     : INTEGER );
         PORT ( clockTick   : IN  std_logic;
                globalClock : IN  std_logic;
                clockBus    : OUT std_logic_vector( 4 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT main
         PORT ( CHA_PIN4             : IN  std_logic;
                CHB_PIN5             : IN  std_logic;
                CH_3_Pin6            : IN  std_logic;
                ONN                  : IN  std_logic;
                ON_OFF_Music         : IN  std_logic;
                Reset_game           : IN  std_logic;
                Reset_stopwatch      : IN  std_logic;
                Reset_timer          : IN  std_logic;
                Start_stop_game      : IN  std_logic;
                logisimClockTree0    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree1    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree10   : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree11   : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree12   : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree13   : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree14   : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree15   : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree16   : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree2    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree3    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree4    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree5    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree6    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree7    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree8    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimClockTree9    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimInputBubbles  : IN  std_logic_vector( 1 DOWNTO 0 );
                song_selector        : IN  std_logic;
                start_stop_alarm     : IN  std_logic;
                start_stop_stopwatch : IN  std_logic;
                start_stop_timer     : IN  std_logic;
                GND                  : OUT std_logic;
                PIN2_Buzzer          : OUT std_logic;
                Vcc                  : OUT std_logic;
                logisimOutputBubbles : OUT std_logic_vector( 57 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_CHA_PIN4             : std_logic;
   SIGNAL s_CHB_PIN5             : std_logic;
   SIGNAL s_CH_3_Pin6            : std_logic;
   SIGNAL s_GND                  : std_logic;
   SIGNAL s_ONN                  : std_logic;
   SIGNAL s_ON_OFF_Music         : std_logic;
   SIGNAL s_PIN2_Buzzer          : std_logic;
   SIGNAL s_Reset_game           : std_logic;
   SIGNAL s_Reset_stopwatch      : std_logic;
   SIGNAL s_Reset_timer          : std_logic;
   SIGNAL s_Start_stop_game      : std_logic;
   SIGNAL s_Vcc                  : std_logic;
   SIGNAL s_fpgaTick             : std_logic;
   SIGNAL s_logisimClockTree0    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree1    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree10   : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree11   : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree12   : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree13   : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree14   : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree15   : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree16   : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree2    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree3    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree4    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree5    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree6    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree7    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree8    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimClockTree9    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimInputBubbles  : std_logic_vector( 1 DOWNTO 0 );
   SIGNAL s_logisimOutputBubbles : std_logic_vector( 57 DOWNTO 0 );
   SIGNAL s_song_selector        : std_logic;
   SIGNAL s_start_stop_alarm     : std_logic;
   SIGNAL s_start_stop_stopwatch : std_logic;
   SIGNAL s_start_stop_timer     : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All signal adaptations are performed here                                  --
   --------------------------------------------------------------------------------
   ALARMMM_LED_0             <= s_logisimOutputBubbles(16);
   ALARM_ON_LED_0            <= s_logisimOutputBubbles(56);
   GND_0                     <= s_GND;
   MP3_LED_0                 <= s_logisimOutputBubbles(22);
   Normal_watch_mode_LED_0   <= s_logisimOutputBubbles(20);
   ON_OFF_LED_0              <= s_logisimOutputBubbles(57);
   PIN2_Buzzer_0             <= s_PIN2_Buzzer;
   STOPWATCH_LED_0           <= s_logisimOutputBubbles(21);
   TIMERR_LED_0              <= s_logisimOutputBubbles(19);
   Time_setting_LED_0        <= s_logisimOutputBubbles(18);
   Vcc_0                     <= s_Vcc;
   game_10SECC_LED_0         <= s_logisimOutputBubbles(23);
   n_displayy_0_DecimalPoint <=  NOT s_logisimOutputBubbles(55);
   n_displayy_0_Segment_A    <=  NOT s_logisimOutputBubbles(48);
   n_displayy_0_Segment_B    <=  NOT s_logisimOutputBubbles(49);
   n_displayy_0_Segment_C    <=  NOT s_logisimOutputBubbles(50);
   n_displayy_0_Segment_D    <=  NOT s_logisimOutputBubbles(51);
   n_displayy_0_Segment_E    <=  NOT s_logisimOutputBubbles(52);
   n_displayy_0_Segment_F    <=  NOT s_logisimOutputBubbles(53);
   n_displayy_0_Segment_G    <=  NOT s_logisimOutputBubbles(54);
   n_displayy_1_DecimalPoint <=  NOT s_logisimOutputBubbles(47);
   n_displayy_1_Segment_A    <=  NOT s_logisimOutputBubbles(40);
   n_displayy_1_Segment_B    <=  NOT s_logisimOutputBubbles(41);
   n_displayy_1_Segment_C    <=  NOT s_logisimOutputBubbles(42);
   n_displayy_1_Segment_D    <=  NOT s_logisimOutputBubbles(43);
   n_displayy_1_Segment_E    <=  NOT s_logisimOutputBubbles(44);
   n_displayy_1_Segment_F    <=  NOT s_logisimOutputBubbles(45);
   n_displayy_1_Segment_G    <=  NOT s_logisimOutputBubbles(46);
   n_displayy_2_DecimalPoint <=  NOT s_logisimOutputBubbles(39);
   n_displayy_2_Segment_A    <=  NOT s_logisimOutputBubbles(32);
   n_displayy_2_Segment_B    <=  NOT s_logisimOutputBubbles(33);
   n_displayy_2_Segment_C    <=  NOT s_logisimOutputBubbles(34);
   n_displayy_2_Segment_D    <=  NOT s_logisimOutputBubbles(35);
   n_displayy_2_Segment_E    <=  NOT s_logisimOutputBubbles(36);
   n_displayy_2_Segment_F    <=  NOT s_logisimOutputBubbles(37);
   n_displayy_2_Segment_G    <=  NOT s_logisimOutputBubbles(38);
   n_displayy_3_DecimalPoint <=  NOT s_logisimOutputBubbles(31);
   n_displayy_3_Segment_A    <=  NOT s_logisimOutputBubbles(24);
   n_displayy_3_Segment_B    <=  NOT s_logisimOutputBubbles(25);
   n_displayy_3_Segment_C    <=  NOT s_logisimOutputBubbles(26);
   n_displayy_3_Segment_D    <=  NOT s_logisimOutputBubbles(27);
   n_displayy_3_Segment_E    <=  NOT s_logisimOutputBubbles(28);
   n_displayy_3_Segment_F    <=  NOT s_logisimOutputBubbles(29);
   n_displayy_3_Segment_G    <=  NOT s_logisimOutputBubbles(30);
   n_displayy_4_DecimalPoint <=  NOT s_logisimOutputBubbles(15);
   n_displayy_4_Segment_A    <=  NOT s_logisimOutputBubbles(8);
   n_displayy_4_Segment_B    <=  NOT s_logisimOutputBubbles(9);
   n_displayy_4_Segment_C    <=  NOT s_logisimOutputBubbles(10);
   n_displayy_4_Segment_D    <=  NOT s_logisimOutputBubbles(11);
   n_displayy_4_Segment_E    <=  NOT s_logisimOutputBubbles(12);
   n_displayy_4_Segment_F    <=  NOT s_logisimOutputBubbles(13);
   n_displayy_4_Segment_G    <=  NOT s_logisimOutputBubbles(14);
   n_displayy_5_DecimalPoint <=  NOT s_logisimOutputBubbles(7);
   n_displayy_5_Segment_A    <=  NOT s_logisimOutputBubbles(0);
   n_displayy_5_Segment_B    <=  NOT s_logisimOutputBubbles(1);
   n_displayy_5_Segment_C    <=  NOT s_logisimOutputBubbles(2);
   n_displayy_5_Segment_D    <=  NOT s_logisimOutputBubbles(3);
   n_displayy_5_Segment_E    <=  NOT s_logisimOutputBubbles(4);
   n_displayy_5_Segment_F    <=  NOT s_logisimOutputBubbles(5);
   n_displayy_5_Segment_G    <=  NOT s_logisimOutputBubbles(6);
   s_CHA_PIN4                <= CHA_PIN4_0;
   s_CHB_PIN5                <= CHB_PIN5_0;
   s_CH_3_Pin6               <= CH_3_Pin6_0;
   s_ONN                     <= ONN_0;
   s_ON_OFF_Music            <= ON_OFF_Music_0;
   s_Reset_game              <= Reset_game_0;
   s_Reset_stopwatch         <= Reset_stopwatch_0;
   s_Reset_timer             <= Reset_timer_0;
   s_Start_stop_game         <= Start_stop_game_0;
   s_logisimInputBubbles(0)  <=  NOT n_Reset_0;
   s_logisimInputBubbles(1)  <=  NOT n_STATE_SELECTOR_BUTTON_0;
   s_song_selector           <= song_selector_0;
   s_start_stop_alarm        <= start_stop_alarm_0;
   s_start_stop_stopwatch    <= start_stop_stopwatch_0;
   s_start_stop_timer        <= start_stop_timer_0;
   state_game_LED_0          <= s_logisimOutputBubbles(17);

   --------------------------------------------------------------------------------
   -- The clock tree components are defined here                                 --
   --------------------------------------------------------------------------------
   BASE_0 : logisimTickGenerator
      GENERIC MAP ( nrOfBits    => 8,
                    reloadValue => 156 )
      PORT MAP ( FPGAClock => fpgaGlobalClock,
                 FPGATick  => s_fpgaTick );

   BASE_1 : LogisimClockComponent
      GENERIC MAP ( highTicks => 43,
                    lowTicks  => 43,
                    nrOfBits  => 7,
                    phase     => 2 )
      PORT MAP ( clockBus    => s_logisimClockTree0,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   BASE_2 : LogisimClockComponent
      GENERIC MAP ( highTicks => 32000,
                    lowTicks  => 32000,
                    nrOfBits  => 16,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree1,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   Fsharp5_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 43,
                    lowTicks  => 43,
                    nrOfBits  => 7,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree2,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   B4_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 65,
                    lowTicks  => 65,
                    nrOfBits  => 8,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree3,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   Db5_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 58,
                    lowTicks  => 58,
                    nrOfBits  => 7,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree4,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   re5_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 54,
                    lowTicks  => 54,
                    nrOfBits  => 7,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree5,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   E5_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 49,
                    lowTicks  => 49,
                    nrOfBits  => 7,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree6,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   G4_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 82,
                    lowTicks  => 82,
                    nrOfBits  => 8,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree7,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   Gsharp4_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 77,
                    lowTicks  => 77,
                    nrOfBits  => 8,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree8,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   Dsharp5_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 51,
                    lowTicks  => 51,
                    nrOfBits  => 7,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree9,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   do5_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 61,
                    lowTicks  => 61,
                    nrOfBits  => 7,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree10,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   A4_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 73,
                    lowTicks  => 73,
                    nrOfBits  => 8,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree11,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   do4_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 122,
                    lowTicks  => 122,
                    nrOfBits  => 8,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree12,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   E4_clock : LogisimClockComponent
      GENERIC MAP ( highTicks => 97,
                    lowTicks  => 97,
                    nrOfBits  => 8,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree13,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   CLK : LogisimClockComponent
      GENERIC MAP ( highTicks => 16000,
                    lowTicks  => 16000,
                    nrOfBits  => 15,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree14,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   BASE_16 : LogisimClockComponent
      GENERIC MAP ( highTicks => 1,
                    lowTicks  => 1,
                    nrOfBits  => 1,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree15,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );
   BASE_17 : LogisimClockComponent
      GENERIC MAP ( highTicks => 320,
                    lowTicks  => 320,
                    nrOfBits  => 10,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree16,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );

   --------------------------------------------------------------------------------
   -- The toplevel component is connected here                                   --
   --------------------------------------------------------------------------------
   CIRCUIT_0 : main
      PORT MAP ( CHA_PIN4             => s_CHA_PIN4,
                 CHB_PIN5             => s_CHB_PIN5,
                 CH_3_Pin6            => s_CH_3_Pin6,
                 GND                  => s_GND,
                 ONN                  => s_ONN,
                 ON_OFF_Music         => s_ON_OFF_Music,
                 PIN2_Buzzer          => s_PIN2_Buzzer,
                 Reset_game           => s_Reset_game,
                 Reset_stopwatch      => s_Reset_stopwatch,
                 Reset_timer          => s_Reset_timer,
                 Start_stop_game      => s_Start_stop_game,
                 Vcc                  => s_Vcc,
                 logisimClockTree0    => s_logisimClockTree0,
                 logisimClockTree1    => s_logisimClockTree1,
                 logisimClockTree10   => s_logisimClockTree10,
                 logisimClockTree11   => s_logisimClockTree11,
                 logisimClockTree12   => s_logisimClockTree12,
                 logisimClockTree13   => s_logisimClockTree13,
                 logisimClockTree14   => s_logisimClockTree14,
                 logisimClockTree15   => s_logisimClockTree15,
                 logisimClockTree16   => s_logisimClockTree16,
                 logisimClockTree2    => s_logisimClockTree2,
                 logisimClockTree3    => s_logisimClockTree3,
                 logisimClockTree4    => s_logisimClockTree4,
                 logisimClockTree5    => s_logisimClockTree5,
                 logisimClockTree6    => s_logisimClockTree6,
                 logisimClockTree7    => s_logisimClockTree7,
                 logisimClockTree8    => s_logisimClockTree8,
                 logisimClockTree9    => s_logisimClockTree9,
                 logisimInputBubbles  => s_logisimInputBubbles,
                 logisimOutputBubbles => s_logisimOutputBubbles,
                 song_selector        => s_song_selector,
                 start_stop_alarm     => s_start_stop_alarm,
                 start_stop_stopwatch => s_start_stop_stopwatch,
                 start_stop_timer     => s_start_stop_timer );
END platformIndependent;
