--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : game_logic10sec                                              ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF game_logic10sec IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_24_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1  : IN  std_logic;
                input10 : IN  std_logic;
                input11 : IN  std_logic;
                input12 : IN  std_logic;
                input13 : IN  std_logic;
                input14 : IN  std_logic;
                input15 : IN  std_logic;
                input16 : IN  std_logic;
                input17 : IN  std_logic;
                input18 : IN  std_logic;
                input19 : IN  std_logic;
                input2  : IN  std_logic;
                input20 : IN  std_logic;
                input21 : IN  std_logic;
                input22 : IN  std_logic;
                input23 : IN  std_logic;
                input24 : IN  std_logic;
                input3  : IN  std_logic;
                input4  : IN  std_logic;
                input5  : IN  std_logic;
                input6  : IN  std_logic;
                input7  : IN  std_logic;
                input8  : IN  std_logic;
                input9  : IN  std_logic;
                result  : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT Multiplexer_bus_2
         GENERIC ( nrOfBits : INTEGER );
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_1 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                sel     : IN  std_logic;
                muxOut  : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Comparator
         GENERIC ( nrOfBits       : INTEGER;
                   twosComplement : INTEGER );
         PORT ( dataA         : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                dataB         : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                aEqualsB      : OUT std_logic;
                aGreaterThanB : OUT std_logic;
                aLessThanB    : OUT std_logic );
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

      COMPONENT time_10_sec_game_affichage
         PORT ( current_time       : IN  std_logic_vector( 23 DOWNTO 0 );
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
                displays5_1        : OUT std_logic_vector( 41 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT affichage_nothing
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
                displays5_1        : OUT std_logic_vector( 41 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT loser_affichage
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
                displays5_1        : OUT std_logic_vector( 41 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT SCORE_affichage
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
                displays5_1        : OUT std_logic_vector( 41 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus1  : std_logic_vector( 23 DOWNTO 0 );
   SIGNAL s_logisimBus21 : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimBus31 : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimBus32 : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimBus36 : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimBus45 : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 23 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 41 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet33 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet42 : std_logic;
   SIGNAL s_logisimNet43 : std_logic;
   SIGNAL s_logisimNet44 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet47 : std_logic;
   SIGNAL s_logisimNet52 : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet24 <= logisimClockTree1(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus1(23 DOWNTO 0) <= current_time;
   s_logisimNet0              <= start_stop;
   s_logisimNet2              <= Reset;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   display0 <= s_logisimBus32(41 DOWNTO 35);
   display1 <= s_logisimBus32(34 DOWNTO 28);
   display2 <= s_logisimBus32(27 DOWNTO 21);
   display3 <= s_logisimBus32(20 DOWNTO 14);
   display4 <= s_logisimBus32(13 DOWNTO 7);
   display5 <= s_logisimBus32(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- Constant
    s_logisimBus5(23 DOWNTO 0)  <=  X"001000";


   -- Do not connect

   -- Do not connect

   -- NOT Gate
   s_logisimNet23 <=  NOT s_logisimNet12;

   -- NOT Gate
   s_logisimNet29 <=  NOT s_logisimNet0;

   -- NOT Gate
   s_logisimNet41 <=  NOT s_logisimNet28;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet29,
                 input3 => s_logisimNet15,
                 result => s_logisimNet35 );

   GATES_2 : AND_GATE_24_INPUTS
      GENERIC MAP ( BubblesMask => X"FFFFFF" )
      PORT MAP ( input1  => s_logisimBus1(0),
                 input10 => s_logisimBus1(9),
                 input11 => s_logisimBus1(10),
                 input12 => s_logisimBus1(11),
                 input13 => s_logisimBus1(12),
                 input14 => s_logisimBus1(13),
                 input15 => s_logisimBus1(14),
                 input16 => s_logisimBus1(15),
                 input17 => s_logisimBus1(16),
                 input18 => s_logisimBus1(17),
                 input19 => s_logisimBus1(18),
                 input2  => s_logisimBus1(1),
                 input20 => s_logisimBus1(19),
                 input21 => s_logisimBus1(20),
                 input22 => s_logisimBus1(21),
                 input23 => s_logisimBus1(22),
                 input24 => s_logisimBus1(23),
                 input3  => s_logisimBus1(2),
                 input4  => s_logisimBus1(3),
                 input5  => s_logisimBus1(4),
                 input6  => s_logisimBus1(5),
                 input7  => s_logisimBus1(6),
                 input8  => s_logisimBus1(7),
                 input9  => s_logisimBus1(8),
                 result  => s_logisimNet12 );

   GATES_3 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet0,
                 input2 => s_logisimNet12,
                 result => s_logisimNet44 );

   PLEXERS_4 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 42 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus21(41 DOWNTO 0),
                 muxIn_1 => s_logisimBus45(41 DOWNTO 0),
                 muxOut  => s_logisimBus36(41 DOWNTO 0),
                 sel     => s_logisimNet28 );

   PLEXERS_5 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 42 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus36(41 DOWNTO 0),
                 muxIn_1 => s_logisimBus8(41 DOWNTO 0),
                 muxOut  => s_logisimBus32(41 DOWNTO 0),
                 sel     => s_logisimNet44 );

   PLEXERS_6 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 42 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus6(41 DOWNTO 0),
                 muxIn_1 => s_logisimBus31(41 DOWNTO 0),
                 muxOut  => s_logisimBus21(41 DOWNTO 0),
                 sel     => s_logisimNet35 );

   ARITH_7 : Comparator
      GENERIC MAP ( nrOfBits       => 24,
                    twosComplement => 1 )
      PORT MAP ( aEqualsB      => s_logisimNet15,
                 aGreaterThanB => s_logisimNet40,
                 aLessThanB    => s_logisimNet11,
                 dataA         => s_logisimBus5(23 DOWNTO 0),
                 dataB         => s_logisimBus1(23 DOWNTO 0) );

   MEMORY_8 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet41,
                 preset => '0',
                 q      => s_logisimNet28,
                 qBar   => s_logisimNet30,
                 reset  => s_logisimNet2,
                 tick   => logisimClockTree1(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   time_10_sec_game_affichage_1 : time_10_sec_game_affichage
      PORT MAP ( current_time       => s_logisimBus1(23 DOWNTO 0),
                 displays5_1        => s_logisimBus45(41 DOWNTO 0),
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

   affichage_nothing_1 : affichage_nothing
      PORT MAP ( displays5_1        => s_logisimBus8(41 DOWNTO 0),
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

   loser_affichage_1 : loser_affichage
      PORT MAP ( displays5_1        => s_logisimBus6(41 DOWNTO 0),
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

   SCORE_affichage_1 : SCORE_affichage
      PORT MAP ( displays5_1        => s_logisimBus31(41 DOWNTO 0),
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
