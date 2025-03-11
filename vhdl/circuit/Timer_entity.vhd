--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : Timer                                                        ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Timer IS
   PORT ( CLK_64KHz          : IN  std_logic;
          CW                 : IN  std_logic;
          CWW                : IN  std_logic;
          ONN                : IN  std_logic;
          Reset              : IN  std_logic;
          State3             : IN  std_logic;
          confirm            : IN  std_logic;
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
          seconds_CLK        : IN  std_logic;
          start_stop_timer   : IN  std_logic;
          BUZZER_ON          : OUT std_logic;
          HOURS_MSD          : OUT std_logic_vector( 6 DOWNTO 0 );
          HOUR_LSD           : OUT std_logic_vector( 6 DOWNTO 0 );
          MINS_LSD           : OUT std_logic_vector( 6 DOWNTO 0 );
          MINS_MSD           : OUT std_logic_vector( 6 DOWNTO 0 );
          SECONDS_MSD        : OUT std_logic_vector( 6 DOWNTO 0 );
          seconds_LSD        : OUT std_logic_vector( 6 DOWNTO 0 ) );
END ENTITY Timer;
