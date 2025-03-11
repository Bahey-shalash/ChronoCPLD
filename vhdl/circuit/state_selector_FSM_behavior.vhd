--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : state_selector_FSM                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF state_selector_FSM IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT D_FLIPFLOP
         GENERIC ( invertClockEnable : INTEGER );
         PORT ( clock  : IN  std_logic;
                d      : IN  std_logic;
                preset : IN  std_logic;
                reset  : IN  std_logic;
                tick   : IN  std_logic;
                q      : OUT std_logic;
                qBar   : OUT std_logic );
      END COMPONENT;

      COMPONENT Transition_logic_state_selector
         PORT ( Button             : IN  std_logic;
                C0                 : IN  std_logic;
                C1                 : IN  std_logic;
                C2                 : IN  std_logic;
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
                D0                 : OUT std_logic;
                D1                 : OUT std_logic;
                D2                 : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet1 <= CLk;
   s_logisimNet4 <= Reset;
   s_logisimNet8 <= inputtttttttttt;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   D0 <= s_logisimNet0;
   D1 <= s_logisimNet6;
   D2 <= s_logisimNet3;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- Do not connect

   -- Do not connect

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   MEMORY_1 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet2,
                 preset => '0',
                 q      => s_logisimNet6,
                 qBar   => s_logisimNet9,
                 reset  => s_logisimNet4,
                 tick   => logisimClockTree15(2) );

   MEMORY_2 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet7,
                 preset => '0',
                 q      => s_logisimNet3,
                 qBar   => s_logisimNet10,
                 reset  => s_logisimNet4,
                 tick   => logisimClockTree15(2) );

   MEMORY_3 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet5,
                 preset => '0',
                 q      => s_logisimNet0,
                 qBar   => s_logisimNet11,
                 reset  => s_logisimNet4,
                 tick   => logisimClockTree15(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   trans_logic_state_delector_toggle_1 : Transition_logic_state_selector
      PORT MAP ( Button             => s_logisimNet8,
                 C0                 => s_logisimNet0,
                 C1                 => s_logisimNet6,
                 C2                 => s_logisimNet3,
                 D0                 => s_logisimNet5,
                 D1                 => s_logisimNet2,
                 D2                 => s_logisimNet7,
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
                 logisimClockTree9  => logisimClockTree9 );

END platformIndependent;
