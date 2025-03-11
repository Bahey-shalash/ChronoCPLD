--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : game_over                                                    ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF game_over IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT Multiplexer_bus_2
         GENERIC ( nrOfBits : INTEGER );
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_1 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                sel     : IN  std_logic;
                muxOut  : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

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

      COMPONENT game_affichage
         PORT ( logisimClockTree0  : IN  std_logic_vector( 4 DOWNTO 0 );
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
                Display0           : OUT std_logic_vector( 6 DOWNTO 0 );
                display1           : OUT std_logic_vector( 6 DOWNTO 0 );
                display2           : OUT std_logic_vector( 6 DOWNTO 0 );
                display3           : OUT std_logic_vector( 6 DOWNTO 0 );
                display4           : OUT std_logic_vector( 6 DOWNTO 0 );
                display5           : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT over_affichage
         PORT ( logisimClockTree0  : IN  std_logic_vector( 4 DOWNTO 0 );
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
                Display0           : OUT std_logic_vector( 6 DOWNTO 0 );
                display1           : OUT std_logic_vector( 6 DOWNTO 0 );
                display2           : OUT std_logic_vector( 6 DOWNTO 0 );
                display3           : OUT std_logic_vector( 6 DOWNTO 0 );
                display4           : OUT std_logic_vector( 6 DOWNTO 0 );
                display5           : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus1  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus10 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus12 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus13 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus14 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus15 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus16 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus2  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus20 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus21 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus22 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus4  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus7  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus9  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet11 <= CLK;
   s_logisimNet17 <= reset;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   display0 <= s_logisimBus20(6 DOWNTO 0);
   display1 <= s_logisimBus15(6 DOWNTO 0);
   display2 <= s_logisimBus16(6 DOWNTO 0);
   display3 <= s_logisimBus9(6 DOWNTO 0);
   display4 <= s_logisimBus22(6 DOWNTO 0);
   display5 <= s_logisimBus21(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- NOT Gate
   s_logisimNet18 <=  NOT s_logisimNet3;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   PLEXERS_1 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus7(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus10(6 DOWNTO 0),
                 muxOut  => s_logisimBus20(6 DOWNTO 0),
                 sel     => s_logisimNet3 );

   PLEXERS_2 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus14(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus8(6 DOWNTO 0),
                 muxOut  => s_logisimBus15(6 DOWNTO 0),
                 sel     => s_logisimNet3 );

   PLEXERS_3 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus6(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus0(6 DOWNTO 0),
                 muxOut  => s_logisimBus16(6 DOWNTO 0),
                 sel     => s_logisimNet3 );

   PLEXERS_4 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus4(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus13(6 DOWNTO 0),
                 muxOut  => s_logisimBus9(6 DOWNTO 0),
                 sel     => s_logisimNet3 );

   PLEXERS_5 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus12(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus2(6 DOWNTO 0),
                 muxOut  => s_logisimBus22(6 DOWNTO 0),
                 sel     => s_logisimNet3 );

   PLEXERS_6 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus1(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus5(6 DOWNTO 0),
                 muxOut  => s_logisimBus21(6 DOWNTO 0),
                 sel     => s_logisimNet3 );

   MEMORY_7 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet18,
                 preset => '0',
                 q      => s_logisimNet3,
                 qBar   => s_logisimNet19,
                 reset  => s_logisimNet17,
                 tick   => logisimClockTree1(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   game_affichage_1 : game_affichage
      PORT MAP ( Display0           => s_logisimBus7(6 DOWNTO 0),
                 display1           => s_logisimBus14(6 DOWNTO 0),
                 display2           => s_logisimBus6(6 DOWNTO 0),
                 display3           => s_logisimBus4(6 DOWNTO 0),
                 display4           => s_logisimBus12(6 DOWNTO 0),
                 display5           => s_logisimBus1(6 DOWNTO 0),
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

   over_affichage_1 : over_affichage
      PORT MAP ( Display0           => s_logisimBus10(6 DOWNTO 0),
                 display1           => s_logisimBus8(6 DOWNTO 0),
                 display2           => s_logisimBus0(6 DOWNTO 0),
                 display3           => s_logisimBus13(6 DOWNTO 0),
                 display4           => s_logisimBus2(6 DOWNTO 0),
                 display5           => s_logisimBus5(6 DOWNTO 0),
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
