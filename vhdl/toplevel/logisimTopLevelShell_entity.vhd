--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY logisimTopLevelShell IS
   PORT ( CHA_PIN4_0                : IN  std_logic;
          CHB_PIN5_0                : IN  std_logic;
          CH_3_Pin6_0               : IN  std_logic;
          ONN_0                     : IN  std_logic;
          ON_OFF_Music_0            : IN  std_logic;
          Reset_game_0              : IN  std_logic;
          Reset_stopwatch_0         : IN  std_logic;
          Reset_timer_0             : IN  std_logic;
          Start_stop_game_0         : IN  std_logic;
          fpgaGlobalClock           : IN  std_logic;
          n_Reset_0                 : IN  std_logic;
          n_STATE_SELECTOR_BUTTON_0 : IN  std_logic;
          song_selector_0           : IN  std_logic;
          start_stop_alarm_0        : IN  std_logic;
          start_stop_stopwatch_0    : IN  std_logic;
          start_stop_timer_0        : IN  std_logic;
          ALARMMM_LED_0             : OUT std_logic;
          ALARM_ON_LED_0            : OUT std_logic;
          GND_0                     : OUT std_logic;
          MP3_LED_0                 : OUT std_logic;
          Normal_watch_mode_LED_0   : OUT std_logic;
          ON_OFF_LED_0              : OUT std_logic;
          PIN2_Buzzer_0             : OUT std_logic;
          STOPWATCH_LED_0           : OUT std_logic;
          TIMERR_LED_0              : OUT std_logic;
          Time_setting_LED_0        : OUT std_logic;
          Vcc_0                     : OUT std_logic;
          game_10SECC_LED_0         : OUT std_logic;
          n_displayy_0_DecimalPoint : OUT std_logic;
          n_displayy_0_Segment_A    : OUT std_logic;
          n_displayy_0_Segment_B    : OUT std_logic;
          n_displayy_0_Segment_C    : OUT std_logic;
          n_displayy_0_Segment_D    : OUT std_logic;
          n_displayy_0_Segment_E    : OUT std_logic;
          n_displayy_0_Segment_F    : OUT std_logic;
          n_displayy_0_Segment_G    : OUT std_logic;
          n_displayy_1_DecimalPoint : OUT std_logic;
          n_displayy_1_Segment_A    : OUT std_logic;
          n_displayy_1_Segment_B    : OUT std_logic;
          n_displayy_1_Segment_C    : OUT std_logic;
          n_displayy_1_Segment_D    : OUT std_logic;
          n_displayy_1_Segment_E    : OUT std_logic;
          n_displayy_1_Segment_F    : OUT std_logic;
          n_displayy_1_Segment_G    : OUT std_logic;
          n_displayy_2_DecimalPoint : OUT std_logic;
          n_displayy_2_Segment_A    : OUT std_logic;
          n_displayy_2_Segment_B    : OUT std_logic;
          n_displayy_2_Segment_C    : OUT std_logic;
          n_displayy_2_Segment_D    : OUT std_logic;
          n_displayy_2_Segment_E    : OUT std_logic;
          n_displayy_2_Segment_F    : OUT std_logic;
          n_displayy_2_Segment_G    : OUT std_logic;
          n_displayy_3_DecimalPoint : OUT std_logic;
          n_displayy_3_Segment_A    : OUT std_logic;
          n_displayy_3_Segment_B    : OUT std_logic;
          n_displayy_3_Segment_C    : OUT std_logic;
          n_displayy_3_Segment_D    : OUT std_logic;
          n_displayy_3_Segment_E    : OUT std_logic;
          n_displayy_3_Segment_F    : OUT std_logic;
          n_displayy_3_Segment_G    : OUT std_logic;
          n_displayy_4_DecimalPoint : OUT std_logic;
          n_displayy_4_Segment_A    : OUT std_logic;
          n_displayy_4_Segment_B    : OUT std_logic;
          n_displayy_4_Segment_C    : OUT std_logic;
          n_displayy_4_Segment_D    : OUT std_logic;
          n_displayy_4_Segment_E    : OUT std_logic;
          n_displayy_4_Segment_F    : OUT std_logic;
          n_displayy_4_Segment_G    : OUT std_logic;
          n_displayy_5_DecimalPoint : OUT std_logic;
          n_displayy_5_Segment_A    : OUT std_logic;
          n_displayy_5_Segment_B    : OUT std_logic;
          n_displayy_5_Segment_C    : OUT std_logic;
          n_displayy_5_Segment_D    : OUT std_logic;
          n_displayy_5_Segment_E    : OUT std_logic;
          n_displayy_5_Segment_F    : OUT std_logic;
          n_displayy_5_Segment_G    : OUT std_logic;
          state_game_LED_0          : OUT std_logic );
END ENTITY logisimTopLevelShell;
