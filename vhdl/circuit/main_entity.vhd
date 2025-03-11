--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY main IS
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
END ENTITY main;
