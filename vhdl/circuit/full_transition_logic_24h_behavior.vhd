--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : full_transition_logic_24h                                    ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF full_transition_logic_24h IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT Demultiplexer_2
         PORT ( demuxIn    : IN  std_logic;
                enable     : IN  std_logic;
                sel        : IN  std_logic;
                demuxOut_0 : OUT std_logic;
                demuxOut_1 : OUT std_logic );
      END COMPONENT;

      COMPONENT Multiplexer_2
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic;
                muxIn_1 : IN  std_logic;
                sel     : IN  std_logic;
                muxOut  : OUT std_logic );
      END COMPONENT;

      COMPONENT transition_logic24h_decrement
         PORT ( C0                 : IN  std_logic;
                C1                 : IN  std_logic;
                C2                 : IN  std_logic;
                C3                 : IN  std_logic;
                C4                 : IN  std_logic;
                Enable             : IN  std_logic;
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
                D3                 : OUT std_logic;
                D4                 : OUT std_logic );
      END COMPONENT;

      COMPONENT transition_logic24h_increment
         PORT ( C0                 : IN  std_logic;
                C1                 : IN  std_logic;
                C2                 : IN  std_logic;
                C3                 : IN  std_logic;
                C4                 : IN  std_logic;
                Enable             : IN  std_logic;
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
                D3                 : OUT std_logic;
                D4                 : OUT std_logic );
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
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
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
   s_logisimNet10 <= C4;
   s_logisimNet16 <= C1;
   s_logisimNet21 <= C2;
   s_logisimNet3  <= C0;
   s_logisimNet6  <= increment;
   s_logisimNet7  <= Enable;
   s_logisimNet9  <= C3;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   D0   <= s_logisimNet17;
   D1   <= s_logisimNet22;
   D2   <= s_logisimNet14;
   D3   <= s_logisimNet4;
   D4   <= s_logisimNet27;
   cout <= s_logisimNet18;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet13  <=  '1';


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   PLEXERS_1 : Demultiplexer_2
      PORT MAP ( demuxIn    => s_logisimNet7,
                 demuxOut_0 => s_logisimNet2,
                 demuxOut_1 => s_logisimNet11,
                 enable     => s_logisimNet13,
                 sel        => s_logisimNet6 );

   PLEXERS_2 : Multiplexer_2
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet24,
                 muxIn_1 => s_logisimNet20,
                 muxOut  => s_logisimNet17,
                 sel     => s_logisimNet6 );

   PLEXERS_3 : Multiplexer_2
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet19,
                 muxIn_1 => s_logisimNet8,
                 muxOut  => s_logisimNet22,
                 sel     => s_logisimNet6 );

   PLEXERS_4 : Multiplexer_2
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet26,
                 muxIn_1 => s_logisimNet12,
                 muxOut  => s_logisimNet14,
                 sel     => s_logisimNet6 );

   PLEXERS_5 : Multiplexer_2
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet1,
                 muxIn_1 => s_logisimNet25,
                 muxOut  => s_logisimNet4,
                 sel     => s_logisimNet6 );

   PLEXERS_6 : Multiplexer_2
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet0,
                 muxIn_1 => s_logisimNet5,
                 muxOut  => s_logisimNet27,
                 sel     => s_logisimNet6 );

   PLEXERS_7 : Multiplexer_2
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet15,
                 muxIn_1 => s_logisimNet23,
                 muxOut  => s_logisimNet18,
                 sel     => s_logisimNet6 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   transition_logic24h_decrement_1 : transition_logic24h_decrement
      PORT MAP ( C0                 => s_logisimNet3,
                 C1                 => s_logisimNet16,
                 C2                 => s_logisimNet21,
                 C3                 => s_logisimNet9,
                 C4                 => s_logisimNet10,
                 Cout               => s_logisimNet15,
                 D0                 => s_logisimNet24,
                 D1                 => s_logisimNet19,
                 D2                 => s_logisimNet26,
                 D3                 => s_logisimNet1,
                 D4                 => s_logisimNet0,
                 Enable             => s_logisimNet2,
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

   transition_logic24h_increment_1 : transition_logic24h_increment
      PORT MAP ( C0                 => s_logisimNet3,
                 C1                 => s_logisimNet16,
                 C2                 => s_logisimNet21,
                 C3                 => s_logisimNet9,
                 C4                 => s_logisimNet10,
                 Cout               => s_logisimNet23,
                 D0                 => s_logisimNet20,
                 D1                 => s_logisimNet8,
                 D2                 => s_logisimNet12,
                 D3                 => s_logisimNet25,
                 D4                 => s_logisimNet5,
                 Enable             => s_logisimNet11,
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
