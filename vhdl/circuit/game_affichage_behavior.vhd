--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : game_affichage                                               ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF game_affichage IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus3 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus4 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus5 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus6 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus7 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet1 : std_logic;
   SIGNAL s_logisimNet2 : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all wiring is defined                                                 --
   --------------------------------------------------------------------------------
   s_logisimBus0(0) <= s_logisimNet1;
   s_logisimBus0(1) <= s_logisimNet2;
   s_logisimBus0(2) <= s_logisimNet1;
   s_logisimBus0(3) <= s_logisimNet1;
   s_logisimBus0(4) <= s_logisimNet1;
   s_logisimBus0(5) <= s_logisimNet1;
   s_logisimBus0(6) <= s_logisimNet1;
   s_logisimBus3(0) <= s_logisimNet2;
   s_logisimBus3(1) <= s_logisimNet2;
   s_logisimBus3(2) <= s_logisimNet2;
   s_logisimBus3(3) <= s_logisimNet2;
   s_logisimBus3(4) <= s_logisimNet2;
   s_logisimBus3(5) <= s_logisimNet2;
   s_logisimBus3(6) <= s_logisimNet2;
   s_logisimBus4(0) <= s_logisimNet1;
   s_logisimBus4(1) <= s_logisimNet1;
   s_logisimBus4(2) <= s_logisimNet1;
   s_logisimBus4(3) <= s_logisimNet2;
   s_logisimBus4(4) <= s_logisimNet1;
   s_logisimBus4(5) <= s_logisimNet1;
   s_logisimBus4(6) <= s_logisimNet1;
   s_logisimBus5(0) <= s_logisimNet1;
   s_logisimBus5(1) <= s_logisimNet1;
   s_logisimBus5(2) <= s_logisimNet1;
   s_logisimBus5(3) <= s_logisimNet2;
   s_logisimBus5(4) <= s_logisimNet1;
   s_logisimBus5(5) <= s_logisimNet1;
   s_logisimBus5(6) <= s_logisimNet2;
   s_logisimBus6(0) <= s_logisimNet2;
   s_logisimBus6(1) <= s_logisimNet2;
   s_logisimBus6(2) <= s_logisimNet2;
   s_logisimBus6(3) <= s_logisimNet2;
   s_logisimBus6(4) <= s_logisimNet2;
   s_logisimBus6(5) <= s_logisimNet2;
   s_logisimBus6(6) <= s_logisimNet2;
   s_logisimBus7(0) <= s_logisimNet1;
   s_logisimBus7(1) <= s_logisimNet2;
   s_logisimBus7(2) <= s_logisimNet2;
   s_logisimBus7(3) <= s_logisimNet1;
   s_logisimBus7(4) <= s_logisimNet1;
   s_logisimBus7(5) <= s_logisimNet1;
   s_logisimBus7(6) <= s_logisimNet1;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   Display0 <= s_logisimBus3(6 DOWNTO 0);
   display1 <= s_logisimBus6(6 DOWNTO 0);
   display2 <= s_logisimBus7(6 DOWNTO 0);
   display3 <= s_logisimBus5(6 DOWNTO 0);
   display4 <= s_logisimBus4(6 DOWNTO 0);
   display5 <= s_logisimBus0(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet1  <=  '1';


   -- Constant
    s_logisimNet2  <=  '0';


END platformIndependent;
