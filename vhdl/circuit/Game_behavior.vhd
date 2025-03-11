--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : Game                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Game IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE
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

      COMPONENT LogisimRNG
         GENERIC ( nrOfBits : INTEGER;
                   seed     : std_logic_vector );
         PORT ( clear  : IN  std_logic;
                clock  : IN  std_logic;
                enable : IN  std_logic;
                tick   : IN  std_logic;
                q      : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT game_filter_ish
         PORT ( CLK                : IN  std_logic;
                INPUT_SIGNAL       : IN  std_logic;
                RESET              : IN  std_logic;
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
                SIGNAL_OUT         : OUT std_logic );
      END COMPONENT;

      COMPONENT SR_Latch
         PORT ( Reset              : IN  std_logic;
                Set                : IN  std_logic;
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
                OUTTTT             : OUT std_logic );
      END COMPONENT;

      COMPONENT gameplay_affichage
         PORT ( C2                 : IN  std_logic;
                C_3                : IN  std_logic;
                b0                 : IN  std_logic;
                b1                 : IN  std_logic;
                b2                 : IN  std_logic;
                b_3                : IN  std_logic;
                b_5                : IN  std_logic;
                c0                 : IN  std_logic;
                c1                 : IN  std_logic;
                c_5                : IN  std_logic;
                e_4                : IN  std_logic;
                f4                 : IN  std_logic;
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
                Display0           : OUT std_logic_vector( 6 DOWNTO 0 );
                display1           : OUT std_logic_vector( 6 DOWNTO 0 );
                display2           : OUT std_logic_vector( 6 DOWNTO 0 );
                display3           : OUT std_logic_vector( 6 DOWNTO 0 );
                display4           : OUT std_logic_vector( 6 DOWNTO 0 );
                display5           : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT game_over
         PORT ( CLK                : IN  std_logic;
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
                reset              : IN  std_logic;
                display0           : OUT std_logic_vector( 6 DOWNTO 0 );
                display1           : OUT std_logic_vector( 6 DOWNTO 0 );
                display2           : OUT std_logic_vector( 6 DOWNTO 0 );
                display3           : OUT std_logic_vector( 6 DOWNTO 0 );
                display4           : OUT std_logic_vector( 6 DOWNTO 0 );
                display5           : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus1  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus21 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus23 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus25 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus27 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus28 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus33 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus37 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus38 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus41 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus44 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus48 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus53 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus56 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus58 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus7  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
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
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet32 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet42 : std_logic;
   SIGNAL s_logisimNet43 : std_logic;
   SIGNAL s_logisimNet45 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet47 : std_logic;
   SIGNAL s_logisimNet49 : std_logic;
   SIGNAL s_logisimNet50 : std_logic;
   SIGNAL s_logisimNet51 : std_logic;
   SIGNAL s_logisimNet52 : std_logic;
   SIGNAL s_logisimNet54 : std_logic;
   SIGNAL s_logisimNet55 : std_logic;
   SIGNAL s_logisimNet57 : std_logic;
   SIGNAL s_logisimNet59 : std_logic;
   SIGNAL s_logisimNet60 : std_logic;
   SIGNAL s_logisimNet61 : std_logic;
   SIGNAL s_logisimNet62 : std_logic;
   SIGNAL s_logisimNet63 : std_logic;
   SIGNAL s_logisimNet64 : std_logic;
   SIGNAL s_logisimNet65 : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet39 <= logisimClockTree15(0);
   s_logisimNet65 <= logisimClockTree1(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet24 <= Cw;
   s_logisimNet55 <= start_stop;
   s_logisimNet57 <= CCW;
   s_logisimNet62 <= state_game;
   s_logisimNet63 <= CLK;
   s_logisimNet64 <= Reset_game;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   display0 <= s_logisimBus7(6 DOWNTO 0);
   display1 <= s_logisimBus41(6 DOWNTO 0);
   display2 <= s_logisimBus58(6 DOWNTO 0);
   display3 <= s_logisimBus44(6 DOWNTO 0);
   display4 <= s_logisimBus1(6 DOWNTO 0);
   display5 <= s_logisimBus38(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- Do not connect

   -- NOT Gate
   s_logisimNet3 <=  NOT s_logisimNet14;

   -- NOT Gate
   s_logisimNet61 <=  NOT s_logisimNet55;

   -- NOT Gate
   s_logisimNet19 <=  NOT s_logisimNet16;

   -- NOT Gate
   s_logisimNet43 <=  NOT s_logisimNet17;

   -- NOT Gate
   s_logisimNet52 <=  NOT s_logisimNet13;

   -- NOT Gate
   s_logisimNet34 <=  NOT s_logisimNet29;

   -- NOT Gate
   s_logisimNet40 <=  NOT s_logisimNet4;

   -- NOT Gate
   s_logisimNet8 <=  NOT s_logisimNet20;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet11,
                 result => s_logisimNet60 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet50,
                 result => s_logisimNet0 );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet9,
                 input2 => s_logisimNet15,
                 result => s_logisimNet30 );

   GATES_4 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet51,
                 input2 => s_logisimNet42,
                 result => s_logisimNet45 );

   GATES_5 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet61,
                 input2 => s_logisimNet64,
                 result => s_logisimNet35 );

   GATES_6 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet55,
                 input2 => s_logisimNet45,
                 result => s_logisimNet26 );

   GATES_7 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet55,
                 input2 => s_logisimNet62,
                 result => s_logisimNet54 );

   GATES_8 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet62,
                 input2 => s_logisimNet24,
                 result => s_logisimNet31 );

   GATES_9 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet57,
                 input2 => s_logisimNet62,
                 result => s_logisimNet12 );

   GATES_10 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet31,
                 input2 => s_logisimNet12,
                 result => s_logisimNet20 );

   GATES_11 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet40,
                 input2 => s_logisimNet20,
                 result => s_logisimNet2 );

   GATES_12 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet8,
                 result => s_logisimNet11 );

   PLEXERS_13 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus37(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus53(6 DOWNTO 0),
                 muxOut  => s_logisimBus7(6 DOWNTO 0),
                 sel     => s_logisimNet22 );

   PLEXERS_14 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus21(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus48(6 DOWNTO 0),
                 muxOut  => s_logisimBus41(6 DOWNTO 0),
                 sel     => s_logisimNet22 );

   PLEXERS_15 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus33(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus25(6 DOWNTO 0),
                 muxOut  => s_logisimBus58(6 DOWNTO 0),
                 sel     => s_logisimNet22 );

   PLEXERS_16 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus28(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus56(6 DOWNTO 0),
                 muxOut  => s_logisimBus44(6 DOWNTO 0),
                 sel     => s_logisimNet22 );

   PLEXERS_17 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus6(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus23(6 DOWNTO 0),
                 muxOut  => s_logisimBus1(6 DOWNTO 0),
                 sel     => s_logisimNet22 );

   PLEXERS_18 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 7 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus5(6 DOWNTO 0),
                 muxIn_1 => s_logisimBus27(6 DOWNTO 0),
                 muxOut  => s_logisimBus38(6 DOWNTO 0),
                 sel     => s_logisimNet22 );

   MEMORY_19 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet17,
                 preset => '0',
                 q      => s_logisimNet16,
                 qBar   => s_logisimNet47,
                 reset  => s_logisimNet64,
                 tick   => logisimClockTree1(2) );

   MEMORY_20 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet16,
                 preset => '0',
                 q      => s_logisimNet29,
                 qBar   => s_logisimNet36,
                 reset  => s_logisimNet64,
                 tick   => logisimClockTree1(2) );

   MEMORY_21 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet29,
                 preset => '0',
                 q      => s_logisimNet14,
                 qBar   => s_logisimNet46,
                 reset  => s_logisimNet64,
                 tick   => logisimClockTree1(2) );

   MEMORY_22 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree15(4),
                 d      => s_logisimNet60,
                 preset => '0',
                 q      => s_logisimNet4,
                 qBar   => s_logisimNet9,
                 reset  => s_logisimNet64,
                 tick   => logisimClockTree15(2) );

   MEMORY_23 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet14,
                 preset => '0',
                 q      => s_logisimNet15,
                 qBar   => s_logisimNet32,
                 reset  => s_logisimNet64,
                 tick   => logisimClockTree1(2) );

   MEMORY_24 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet3,
                 preset => '0',
                 q      => s_logisimNet50,
                 qBar   => s_logisimNet18,
                 reset  => s_logisimNet64,
                 tick   => logisimClockTree1(2) );

   MEMORY_25 : LogisimRNG
      GENERIC MAP ( nrOfBits => 1,
                    seed     => X"00000021" )
      PORT MAP ( clear  => s_logisimNet64,
                 clock  => logisimClockTree1(4),
                 enable => s_logisimNet54,
                 q(0)   => s_logisimNet49,
                 tick   => logisimClockTree1(2) );

   MEMORY_26 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet49,
                 preset => '0',
                 q      => s_logisimNet13,
                 qBar   => s_logisimNet10,
                 reset  => s_logisimNet64,
                 tick   => logisimClockTree1(2) );

   MEMORY_27 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree1(4),
                 d      => s_logisimNet13,
                 preset => '0',
                 q      => s_logisimNet17,
                 qBar   => s_logisimNet59,
                 reset  => s_logisimNet64,
                 tick   => logisimClockTree1(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   game_filter_ish_1 : game_filter_ish
      PORT MAP ( CLK                => s_logisimNet63,
                 INPUT_SIGNAL       => s_logisimNet0,
                 RESET              => s_logisimNet64,
                 SIGNAL_OUT         => s_logisimNet51,
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

   game_filter_ish_2 : game_filter_ish
      PORT MAP ( CLK                => s_logisimNet63,
                 INPUT_SIGNAL       => s_logisimNet30,
                 RESET              => s_logisimNet64,
                 SIGNAL_OUT         => s_logisimNet42,
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

   SR_Latch_1 : SR_Latch
      PORT MAP ( OUTTTT             => s_logisimNet22,
                 Reset              => s_logisimNet35,
                 Set                => s_logisimNet26,
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

   gameplay_affichage_1 : gameplay_affichage
      PORT MAP ( C2                 => s_logisimNet43,
                 C_3                => s_logisimNet19,
                 Display0           => s_logisimBus28(6 DOWNTO 0),
                 b0                 => s_logisimNet29,
                 b1                 => s_logisimNet13,
                 b2                 => s_logisimNet17,
                 b_3                => s_logisimNet16,
                 b_5                => s_logisimNet14,
                 c0                 => s_logisimNet34,
                 c1                 => s_logisimNet52,
                 c_5                => s_logisimNet3,
                 display1           => s_logisimBus21(6 DOWNTO 0),
                 display2           => s_logisimBus37(6 DOWNTO 0),
                 display3           => s_logisimBus33(6 DOWNTO 0),
                 display4           => s_logisimBus6(6 DOWNTO 0),
                 display5           => s_logisimBus5(6 DOWNTO 0),
                 e_4                => s_logisimNet9,
                 f4                 => s_logisimNet4,
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

   game_over_1 : game_over
      PORT MAP ( CLK                => s_logisimNet65,
                 display0           => s_logisimBus53(6 DOWNTO 0),
                 display1           => s_logisimBus48(6 DOWNTO 0),
                 display2           => s_logisimBus25(6 DOWNTO 0),
                 display3           => s_logisimBus56(6 DOWNTO 0),
                 display4           => s_logisimBus23(6 DOWNTO 0),
                 display5           => s_logisimBus27(6 DOWNTO 0),
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
                 reset              => s_logisimNet64 );

END platformIndependent;
