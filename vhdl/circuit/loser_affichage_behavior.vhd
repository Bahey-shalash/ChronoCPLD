--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : loser_affichage                                              ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF loser_affichage IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus7 : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimNet1 : std_logic;
   SIGNAL s_logisimNet2 : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all wiring is defined                                                 --
   --------------------------------------------------------------------------------
   s_logisimBus7(0)  <= s_logisimNet2;
   s_logisimBus7(1)  <= s_logisimNet2;
   s_logisimBus7(10) <= s_logisimNet1;
   s_logisimBus7(11) <= s_logisimNet1;
   s_logisimBus7(12) <= s_logisimNet1;
   s_logisimBus7(13) <= s_logisimNet2;
   s_logisimBus7(14) <= s_logisimNet1;
   s_logisimBus7(15) <= s_logisimNet2;
   s_logisimBus7(16) <= s_logisimNet1;
   s_logisimBus7(17) <= s_logisimNet1;
   s_logisimBus7(18) <= s_logisimNet2;
   s_logisimBus7(19) <= s_logisimNet1;
   s_logisimBus7(2)  <= s_logisimNet2;
   s_logisimBus7(20) <= s_logisimNet1;
   s_logisimBus7(21) <= s_logisimNet1;
   s_logisimBus7(22) <= s_logisimNet2;
   s_logisimBus7(23) <= s_logisimNet2;
   s_logisimBus7(24) <= s_logisimNet1;
   s_logisimBus7(25) <= s_logisimNet1;
   s_logisimBus7(26) <= s_logisimNet1;
   s_logisimBus7(27) <= s_logisimNet1;
   s_logisimBus7(28) <= s_logisimNet1;
   s_logisimBus7(29) <= s_logisimNet1;
   s_logisimBus7(3)  <= s_logisimNet1;
   s_logisimBus7(30) <= s_logisimNet1;
   s_logisimBus7(31) <= s_logisimNet2;
   s_logisimBus7(32) <= s_logisimNet1;
   s_logisimBus7(33) <= s_logisimNet1;
   s_logisimBus7(34) <= s_logisimNet1;
   s_logisimBus7(35) <= s_logisimNet2;
   s_logisimBus7(36) <= s_logisimNet2;
   s_logisimBus7(37) <= s_logisimNet2;
   s_logisimBus7(38) <= s_logisimNet2;
   s_logisimBus7(39) <= s_logisimNet2;
   s_logisimBus7(4)  <= s_logisimNet1;
   s_logisimBus7(40) <= s_logisimNet2;
   s_logisimBus7(41) <= s_logisimNet2;
   s_logisimBus7(5)  <= s_logisimNet1;
   s_logisimBus7(6)  <= s_logisimNet2;
   s_logisimBus7(7)  <= s_logisimNet1;
   s_logisimBus7(8)  <= s_logisimNet1;
   s_logisimBus7(9)  <= s_logisimNet1;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   displays5_1 <= s_logisimBus7(41 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet2  <=  '0';


   -- Constant
    s_logisimNet1  <=  '1';


END platformIndependent;
