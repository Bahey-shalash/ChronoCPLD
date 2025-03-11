--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : gameplay_affichage                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF gameplay_affichage IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus12 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus13 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus2  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus7  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus9  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all wiring is defined                                                 --
   --------------------------------------------------------------------------------
   s_logisimBus12(0) <= s_logisimNet0;
   s_logisimBus12(3) <= s_logisimNet0;
   s_logisimBus12(4) <= s_logisimNet0;
   s_logisimBus12(5) <= s_logisimNet0;
   s_logisimBus12(6) <= s_logisimNet0;
   s_logisimBus13(0) <= s_logisimNet0;
   s_logisimBus13(3) <= s_logisimNet0;
   s_logisimBus13(4) <= s_logisimNet0;
   s_logisimBus13(5) <= s_logisimNet0;
   s_logisimBus13(6) <= s_logisimNet0;
   s_logisimBus2(0)  <= s_logisimNet0;
   s_logisimBus2(3)  <= s_logisimNet0;
   s_logisimBus2(4)  <= s_logisimNet0;
   s_logisimBus2(5)  <= s_logisimNet0;
   s_logisimBus2(6)  <= s_logisimNet0;
   s_logisimBus7(0)  <= s_logisimNet3;
   s_logisimBus7(1)  <= s_logisimNet3;
   s_logisimBus7(2)  <= s_logisimNet1;
   s_logisimBus7(3)  <= s_logisimNet1;
   s_logisimBus7(4)  <= s_logisimNet1;
   s_logisimBus7(5)  <= s_logisimNet3;
   s_logisimBus8(0)  <= s_logisimNet0;
   s_logisimBus8(3)  <= s_logisimNet0;
   s_logisimBus8(4)  <= s_logisimNet0;
   s_logisimBus8(5)  <= s_logisimNet0;
   s_logisimBus8(6)  <= s_logisimNet0;
   s_logisimBus9(0)  <= s_logisimNet0;
   s_logisimBus9(3)  <= s_logisimNet0;
   s_logisimBus9(4)  <= s_logisimNet0;
   s_logisimBus9(5)  <= s_logisimNet0;
   s_logisimBus9(6)  <= s_logisimNet0;

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus12(1) <= b_5;
   s_logisimBus12(2) <= c_5;
   s_logisimBus13(1) <= b2;
   s_logisimBus13(2) <= C2;
   s_logisimBus2(1)  <= b0;
   s_logisimBus2(2)  <= c0;
   s_logisimBus8(1)  <= b_3;
   s_logisimBus8(2)  <= C_3;
   s_logisimBus9(1)  <= b1;
   s_logisimBus9(2)  <= c1;
   s_logisimNet1     <= e_4;
   s_logisimNet3     <= f4;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   Display0 <= s_logisimBus2(6 DOWNTO 0);
   display1 <= s_logisimBus13(6 DOWNTO 0);
   display2 <= s_logisimBus9(6 DOWNTO 0);
   display3 <= s_logisimBus8(6 DOWNTO 0);
   display4 <= s_logisimBus12(6 DOWNTO 0);
   display5 <= s_logisimBus7(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimBus7(6)  <=  '1';


   -- Constant
    s_logisimNet0  <=  '0';


END platformIndependent;
