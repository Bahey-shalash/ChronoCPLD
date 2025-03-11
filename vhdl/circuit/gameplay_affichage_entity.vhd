--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : gameplay_affichage                                           ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY gameplay_affichage IS
   PORT ( C2                 : IN  std_logic;
          C_3                : IN  std_logic;
          b0                 : IN  std_logic;
          b1                 : IN  std_logic;
          b2                 : IN  std_logic;
          b_3                : IN  std_logic;
          b_5                : IN  std_logic;
          c0                 : IN  std_logic;
          c1                 : IN  std_logic;
          c_5                : IN  std_logic;
          e_4                : IN  std_logic;
          f4                 : IN  std_logic;
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
          Display0           : OUT std_logic_vector( 6 DOWNTO 0 );
          display1           : OUT std_logic_vector( 6 DOWNTO 0 );
          display2           : OUT std_logic_vector( 6 DOWNTO 0 );
          display3           : OUT std_logic_vector( 6 DOWNTO 0 );
          display4           : OUT std_logic_vector( 6 DOWNTO 0 );
          display5           : OUT std_logic_vector( 6 DOWNTO 0 ) );
END ENTITY gameplay_affichage;
