--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : counter05_gated                                              ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF counter05_gated IS 

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

      COMPONENT transition_logic_05
         PORT ( C0                 : IN  std_logic;
                C1                 : IN  std_logic;
                C2                 : IN  std_logic;
                C3                 : IN  std_logic;
                Enable             : IN  std_logic;
                Increment          : IN  std_logic;
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
                Cout               : OUT std_logic;
                D0                 : OUT std_logic;
                D1                 : OUT std_logic;
                D2                 : OUT std_logic;
                D3                 : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
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
   s_logisimNet0  <= Reset;
   s_logisimNet1  <= increment;
   s_logisimNet15 <= Enable;
   s_logisimNet7  <= CLK;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   D0   <= s_logisimNet9;
   D1   <= s_logisimNet6;
   D2   <= s_logisimNet5;
   D3   <= s_logisimNet8;
   cout <= s_logisimNet2;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- Do not connect

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   MEMORY_1 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet7,
                 d      => s_logisimNet10,
                 preset => '0',
                 q      => s_logisimNet6,
                 qBar   => s_logisimNet12,
                 reset  => s_logisimNet0,
                 tick   => '1' );

   MEMORY_2 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet7,
                 d      => s_logisimNet3,
                 preset => '0',
                 q      => s_logisimNet5,
                 qBar   => s_logisimNet13,
                 reset  => s_logisimNet0,
                 tick   => '1' );

   MEMORY_3 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet7,
                 d      => s_logisimNet11,
                 preset => '0',
                 q      => s_logisimNet8,
                 qBar   => s_logisimNet14,
                 reset  => s_logisimNet0,
                 tick   => '1' );

   MEMORY_4 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet7,
                 d      => s_logisimNet4,
                 preset => '0',
                 q      => s_logisimNet9,
                 qBar   => s_logisimNet16,
                 reset  => s_logisimNet0,
                 tick   => '1' );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   transition_logic_05_1 : transition_logic_05
      PORT MAP ( C0                 => s_logisimNet9,
                 C1                 => s_logisimNet6,
                 C2                 => s_logisimNet5,
                 C3                 => s_logisimNet8,
                 Cout               => s_logisimNet2,
                 D0                 => s_logisimNet4,
                 D1                 => s_logisimNet10,
                 D2                 => s_logisimNet3,
                 D3                 => s_logisimNet11,
                 Enable             => s_logisimNet15,
                 Increment          => s_logisimNet1,
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
