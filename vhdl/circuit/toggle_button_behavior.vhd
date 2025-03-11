--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : toggle_button                                                ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF toggle_button IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT T_FLIPFLOP
         GENERIC ( invertClockEnable : INTEGER );
         PORT ( clock  : IN  std_logic;
                preset : IN  std_logic;
                reset  : IN  std_logic;
                t      : IN  std_logic;
                tick   : IN  std_logic;
                q      : OUT std_logic;
                qBar   : OUT std_logic );
      END COMPONENT;

      COMPONENT rising_edge_detector_gated
         PORT ( CLk                : IN  std_logic;
                Reset              : IN  std_logic;
                inputt             : IN  std_logic;
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
                outttt             : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimNet0 : std_logic;
   SIGNAL s_logisimNet1 : std_logic;
   SIGNAL s_logisimNet2 : std_logic;
   SIGNAL s_logisimNet3 : std_logic;
   SIGNAL s_logisimNet4 : std_logic;
   SIGNAL s_logisimNet5 : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet0 <= Reset;
   s_logisimNet1 <= CLK;
   s_logisimNet5 <= Buttonn;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   outputtt <= s_logisimNet2;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   MEMORY_1 : T_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 preset => '0',
                 q      => s_logisimNet2,
                 qBar   => s_logisimNet4,
                 reset  => s_logisimNet0,
                 t      => s_logisimNet3,
                 tick   => logisimClockTree15(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   rising_edge_detector_1 : rising_edge_detector_gated
      PORT MAP ( CLk                => s_logisimNet1,
                 Reset              => s_logisimNet0,
                 inputt             => s_logisimNet5,
                 logisimClockTree0  => logisimClockTree0,
                 logisimClockTree1  => logisimClockTree1,
                 logisimClockTree10 => logisimClockTree10,
                 logisimClockTree11 => logisimClockTree11,
                 logisimClockTree12 => logisimClockTree12,
                 logisimClockTree13 => logisimClockTree13,
                 logisimClockTree14 => logisimClockTree14,
                 logisimClockTree15 => logisimClockTree15,
                 logisimClockTree16 => logisimClockTree16,
                 logisimClockTree2  => logisimClockTree2,
                 logisimClockTree3  => logisimClockTree3,
                 logisimClockTree4  => logisimClockTree4,
                 logisimClockTree5  => logisimClockTree5,
                 logisimClockTree6  => logisimClockTree6,
                 logisimClockTree7  => logisimClockTree7,
                 logisimClockTree8  => logisimClockTree8,
                 logisimClockTree9  => logisimClockTree9,
                 outttt             => s_logisimNet3 );

END platformIndependent;
