--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : display_selector                                             ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF display_selector IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT Multiplexer_8
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic;
                muxIn_1 : IN  std_logic;
                muxIn_2 : IN  std_logic;
                muxIn_3 : IN  std_logic;
                muxIn_4 : IN  std_logic;
                muxIn_5 : IN  std_logic;
                muxIn_6 : IN  std_logic;
                muxIn_7 : IN  std_logic;
                sel     : IN  std_logic_vector( 2 DOWNTO 0 );
                muxOut  : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus1  : std_logic_vector( 2 DOWNTO 0 );
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
   SIGNAL s_logisimNet21 : std_logic;
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
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet32 : std_logic;
   SIGNAL s_logisimNet33 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet42 : std_logic;
   SIGNAL s_logisimNet43 : std_logic;
   SIGNAL s_logisimNet44 : std_logic;
   SIGNAL s_logisimNet45 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet47 : std_logic;
   SIGNAL s_logisimNet48 : std_logic;
   SIGNAL s_logisimNet49 : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet50 : std_logic;
   SIGNAL s_logisimNet51 : std_logic;
   SIGNAL s_logisimNet52 : std_logic;
   SIGNAL s_logisimNet53 : std_logic;
   SIGNAL s_logisimNet54 : std_logic;
   SIGNAL s_logisimNet55 : std_logic;
   SIGNAL s_logisimNet56 : std_logic;
   SIGNAL s_logisimNet57 : std_logic;
   SIGNAL s_logisimNet58 : std_logic;
   SIGNAL s_logisimNet59 : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet60 : std_logic;
   SIGNAL s_logisimNet61 : std_logic;
   SIGNAL s_logisimNet62 : std_logic;
   SIGNAL s_logisimNet63 : std_logic;
   SIGNAL s_logisimNet64 : std_logic;
   SIGNAL s_logisimNet65 : std_logic;
   SIGNAL s_logisimNet66 : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus1(0) <= D0;
   s_logisimBus1(1) <= D1;
   s_logisimBus1(2) <= D2;
   s_logisimNet0    <= a_func0;
   s_logisimNet10   <= a_func6;
   s_logisimNet11   <= f_func2;
   s_logisimNet12   <= d_func7;
   s_logisimNet13   <= g_func7;
   s_logisimNet14   <= b_func2;
   s_logisimNet16   <= g_func6;
   s_logisimNet17   <= d_func6;
   s_logisimNet18   <= f_func0;
   s_logisimNet19   <= b_func0;
   s_logisimNet2    <= g_func5;
   s_logisimNet20   <= g_func3;
   s_logisimNet21   <= d_func3;
   s_logisimNet22   <= a_func1;
   s_logisimNet24   <= e_func1;
   s_logisimNet25   <= c_func1;
   s_logisimNet26   <= a_func2;
   s_logisimNet27   <= e_func2;
   s_logisimNet28   <= c_func2;
   s_logisimNet29   <= g_func1;
   s_logisimNet3    <= d_func5;
   s_logisimNet30   <= a_func7;
   s_logisimNet31   <= e_func7;
   s_logisimNet32   <= c_func7;
   s_logisimNet33   <= f_func1;
   s_logisimNet34   <= b_func1;
   s_logisimNet35   <= d_func1;
   s_logisimNet38   <= a_func5;
   s_logisimNet39   <= e_func5;
   s_logisimNet4    <= f_func5;
   s_logisimNet40   <= c_func5;
   s_logisimNet43   <= a_func3;
   s_logisimNet44   <= e_func3;
   s_logisimNet45   <= c_func3;
   s_logisimNet46   <= e_func0;
   s_logisimNet47   <= c_func0;
   s_logisimNet48   <= f_func4;
   s_logisimNet49   <= b_func4;
   s_logisimNet5    <= b_func5;
   s_logisimNet51   <= g_func2;
   s_logisimNet52   <= d_func2;
   s_logisimNet53   <= f_func6;
   s_logisimNet54   <= b_func6;
   s_logisimNet56   <= b_func7;
   s_logisimNet57   <= f_func7;
   s_logisimNet58   <= a_func4;
   s_logisimNet59   <= g_func0;
   s_logisimNet6    <= f_func3;
   s_logisimNet60   <= d_func0;
   s_logisimNet61   <= e_func4;
   s_logisimNet62   <= c_func4;
   s_logisimNet64   <= g_func4;
   s_logisimNet65   <= d_func4;
   s_logisimNet7    <= e_func6;
   s_logisimNet8    <= c_func6;
   s_logisimNet9    <= b_func3;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   a_display <= s_logisimNet36;
   b_display <= s_logisimNet55;
   c_display <= s_logisimNet50;
   d_display <= s_logisimNet66;
   e_display <= s_logisimNet63;
   f_display <= s_logisimNet41;
   g_display <= s_logisimNet15;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   PLEXERS_1 : Multiplexer_8
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet0,
                 muxIn_1 => s_logisimNet22,
                 muxIn_2 => s_logisimNet26,
                 muxIn_3 => s_logisimNet43,
                 muxIn_4 => s_logisimNet58,
                 muxIn_5 => s_logisimNet38,
                 muxIn_6 => s_logisimNet10,
                 muxIn_7 => s_logisimNet30,
                 muxOut  => s_logisimNet36,
                 sel     => s_logisimBus1(2 DOWNTO 0) );

   PLEXERS_2 : Multiplexer_8
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet59,
                 muxIn_1 => s_logisimNet29,
                 muxIn_2 => s_logisimNet51,
                 muxIn_3 => s_logisimNet20,
                 muxIn_4 => s_logisimNet64,
                 muxIn_5 => s_logisimNet2,
                 muxIn_6 => s_logisimNet16,
                 muxIn_7 => s_logisimNet13,
                 muxOut  => s_logisimNet15,
                 sel     => s_logisimBus1(2 DOWNTO 0) );

   PLEXERS_3 : Multiplexer_8
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet60,
                 muxIn_1 => s_logisimNet35,
                 muxIn_2 => s_logisimNet52,
                 muxIn_3 => s_logisimNet21,
                 muxIn_4 => s_logisimNet65,
                 muxIn_5 => s_logisimNet3,
                 muxIn_6 => s_logisimNet17,
                 muxIn_7 => s_logisimNet12,
                 muxOut  => s_logisimNet66,
                 sel     => s_logisimBus1(2 DOWNTO 0) );

   PLEXERS_4 : Multiplexer_8
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet46,
                 muxIn_1 => s_logisimNet24,
                 muxIn_2 => s_logisimNet27,
                 muxIn_3 => s_logisimNet44,
                 muxIn_4 => s_logisimNet61,
                 muxIn_5 => s_logisimNet39,
                 muxIn_6 => s_logisimNet7,
                 muxIn_7 => s_logisimNet31,
                 muxOut  => s_logisimNet63,
                 sel     => s_logisimBus1(2 DOWNTO 0) );

   PLEXERS_5 : Multiplexer_8
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet18,
                 muxIn_1 => s_logisimNet33,
                 muxIn_2 => s_logisimNet11,
                 muxIn_3 => s_logisimNet6,
                 muxIn_4 => s_logisimNet48,
                 muxIn_5 => s_logisimNet4,
                 muxIn_6 => s_logisimNet53,
                 muxIn_7 => s_logisimNet57,
                 muxOut  => s_logisimNet41,
                 sel     => s_logisimBus1(2 DOWNTO 0) );

   PLEXERS_6 : Multiplexer_8
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet19,
                 muxIn_1 => s_logisimNet34,
                 muxIn_2 => s_logisimNet14,
                 muxIn_3 => s_logisimNet9,
                 muxIn_4 => s_logisimNet49,
                 muxIn_5 => s_logisimNet5,
                 muxIn_6 => s_logisimNet54,
                 muxIn_7 => s_logisimNet56,
                 muxOut  => s_logisimNet55,
                 sel     => s_logisimBus1(2 DOWNTO 0) );

   PLEXERS_7 : Multiplexer_8
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet47,
                 muxIn_1 => s_logisimNet25,
                 muxIn_2 => s_logisimNet28,
                 muxIn_3 => s_logisimNet45,
                 muxIn_4 => s_logisimNet62,
                 muxIn_5 => s_logisimNet40,
                 muxIn_6 => s_logisimNet8,
                 muxIn_7 => s_logisimNet32,
                 muxOut  => s_logisimNet50,
                 sel     => s_logisimBus1(2 DOWNTO 0) );


END platformIndependent;
