--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : display_selector                                             ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY display_selector IS
   PORT ( D0                 : IN  std_logic;
          D1                 : IN  std_logic;
          D2                 : IN  std_logic;
          a_func0            : IN  std_logic;
          a_func1            : IN  std_logic;
          a_func2            : IN  std_logic;
          a_func3            : IN  std_logic;
          a_func4            : IN  std_logic;
          a_func5            : IN  std_logic;
          a_func6            : IN  std_logic;
          a_func7            : IN  std_logic;
          b_func0            : IN  std_logic;
          b_func1            : IN  std_logic;
          b_func2            : IN  std_logic;
          b_func3            : IN  std_logic;
          b_func4            : IN  std_logic;
          b_func5            : IN  std_logic;
          b_func6            : IN  std_logic;
          b_func7            : IN  std_logic;
          c_func0            : IN  std_logic;
          c_func1            : IN  std_logic;
          c_func2            : IN  std_logic;
          c_func3            : IN  std_logic;
          c_func4            : IN  std_logic;
          c_func5            : IN  std_logic;
          c_func6            : IN  std_logic;
          c_func7            : IN  std_logic;
          d_func0            : IN  std_logic;
          d_func1            : IN  std_logic;
          d_func2            : IN  std_logic;
          d_func3            : IN  std_logic;
          d_func4            : IN  std_logic;
          d_func5            : IN  std_logic;
          d_func6            : IN  std_logic;
          d_func7            : IN  std_logic;
          e_func0            : IN  std_logic;
          e_func1            : IN  std_logic;
          e_func2            : IN  std_logic;
          e_func3            : IN  std_logic;
          e_func4            : IN  std_logic;
          e_func5            : IN  std_logic;
          e_func6            : IN  std_logic;
          e_func7            : IN  std_logic;
          f_func0            : IN  std_logic;
          f_func1            : IN  std_logic;
          f_func2            : IN  std_logic;
          f_func3            : IN  std_logic;
          f_func4            : IN  std_logic;
          f_func5            : IN  std_logic;
          f_func6            : IN  std_logic;
          f_func7            : IN  std_logic;
          g_func0            : IN  std_logic;
          g_func1            : IN  std_logic;
          g_func2            : IN  std_logic;
          g_func3            : IN  std_logic;
          g_func4            : IN  std_logic;
          g_func5            : IN  std_logic;
          g_func6            : IN  std_logic;
          g_func7            : IN  std_logic;
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
          a_display          : OUT std_logic;
          b_display          : OUT std_logic;
          c_display          : OUT std_logic;
          d_display          : OUT std_logic;
          e_display          : OUT std_logic;
          f_display          : OUT std_logic;
          g_display          : OUT std_logic );
END ENTITY display_selector;
