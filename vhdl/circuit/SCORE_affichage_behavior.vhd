--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : SCORE_affichage                                              ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF SCORE_affichage IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus6 : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimNet0 : std_logic;
   SIGNAL s_logisimNet1 : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all wiring is defined                                                 --
   --------------------------------------------------------------------------------
   s_logisimBus6(0)  <= s_logisimNet0;
   s_logisimBus6(1)  <= s_logisimNet1;
   s_logisimBus6(10) <= s_logisimNet0;
   s_logisimBus6(11) <= s_logisimNet0;
   s_logisimBus6(12) <= s_logisimNet0;
   s_logisimBus6(13) <= s_logisimNet1;
   s_logisimBus6(14) <= s_logisimNet0;
   s_logisimBus6(15) <= s_logisimNet0;
   s_logisimBus6(16) <= s_logisimNet0;
   s_logisimBus6(17) <= s_logisimNet0;
   s_logisimBus6(18) <= s_logisimNet0;
   s_logisimBus6(19) <= s_logisimNet0;
   s_logisimBus6(2)  <= s_logisimNet0;
   s_logisimBus6(20) <= s_logisimNet1;
   s_logisimBus6(21) <= s_logisimNet0;
   s_logisimBus6(22) <= s_logisimNet0;
   s_logisimBus6(23) <= s_logisimNet0;
   s_logisimBus6(24) <= s_logisimNet1;
   s_logisimBus6(25) <= s_logisimNet0;
   s_logisimBus6(26) <= s_logisimNet0;
   s_logisimBus6(27) <= s_logisimNet0;
   s_logisimBus6(28) <= s_logisimNet0;
   s_logisimBus6(29) <= s_logisimNet1;
   s_logisimBus6(3)  <= s_logisimNet0;
   s_logisimBus6(30) <= s_logisimNet1;
   s_logisimBus6(31) <= s_logisimNet0;
   s_logisimBus6(32) <= s_logisimNet0;
   s_logisimBus6(33) <= s_logisimNet0;
   s_logisimBus6(34) <= s_logisimNet0;
   s_logisimBus6(35) <= s_logisimNet1;
   s_logisimBus6(36) <= s_logisimNet1;
   s_logisimBus6(37) <= s_logisimNet1;
   s_logisimBus6(38) <= s_logisimNet1;
   s_logisimBus6(39) <= s_logisimNet1;
   s_logisimBus6(4)  <= s_logisimNet1;
   s_logisimBus6(40) <= s_logisimNet1;
   s_logisimBus6(41) <= s_logisimNet1;
   s_logisimBus6(5)  <= s_logisimNet0;
   s_logisimBus6(6)  <= s_logisimNet0;
   s_logisimBus6(7)  <= s_logisimNet0;
   s_logisimBus6(8)  <= s_logisimNet1;
   s_logisimBus6(9)  <= s_logisimNet1;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   displays5_1 <= s_logisimBus6(41 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet1  <=  '0';


   -- Constant
    s_logisimNet0  <=  '1';


END platformIndependent;
