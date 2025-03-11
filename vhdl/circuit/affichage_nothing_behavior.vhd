--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : affichage_nothing                                            ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF affichage_nothing IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0 : std_logic_vector( 41 DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   displays5_1 <= s_logisimBus0(41 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimBus0(41 DOWNTO 0)  <=  "00"&X"0000000000";


END platformIndependent;
