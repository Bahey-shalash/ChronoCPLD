--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : ALL_counter                                                  ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF ALL_counter IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT counter09_gated
         PORT ( CLK                : IN  std_logic;
                Enable             : IN  std_logic;
                Reset              : IN  std_logic;
                increment          : IN  std_logic;
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
                D2                 : OUT std_logic;
                D3                 : OUT std_logic;
                cout               : OUT std_logic );
      END COMPONENT;

      COMPONENT counter05_gated
         PORT ( CLK                : IN  std_logic;
                Enable             : IN  std_logic;
                Reset              : IN  std_logic;
                increment          : IN  std_logic;
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
                D2                 : OUT std_logic;
                D3                 : OUT std_logic;
                cout               : OUT std_logic );
      END COMPONENT;

      COMPONENT counter24h
         PORT ( CLK                : IN  std_logic;
                Enable             : IN  std_logic;
                Reset              : IN  std_logic;
                increment          : IN  std_logic;
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

      COMPONENT seven_segment_display_decoder
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
                w                  : IN  std_logic;
                x                  : IN  std_logic;
                y                  : IN  std_logic;
                z                  : IN  std_logic;
                a                  : OUT std_logic;
                b                  : OUT std_logic;
                c                  : OUT std_logic;
                d                  : OUT std_logic;
                e                  : OUT std_logic;
                f                  : OUT std_logic;
                g                  : OUT std_logic );
      END COMPONENT;

      COMPONENT decoder24h_to_display
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
                v                  : IN  std_logic;
                w                  : IN  std_logic;
                x                  : IN  std_logic;
                y                  : IN  std_logic;
                z                  : IN  std_logic;
                a0                 : OUT std_logic;
                a1                 : OUT std_logic;
                b0                 : OUT std_logic;
                b1                 : OUT std_logic;
                c0                 : OUT std_logic;
                c1                 : OUT std_logic;
                d0                 : OUT std_logic;
                d1                 : OUT std_logic;
                e0                 : OUT std_logic;
                e1                 : OUT std_logic;
                f0                 : OUT std_logic;
                f1                 : OUT std_logic;
                g0                 : OUT std_logic;
                g1                 : OUT std_logic );
      END COMPONENT;

      COMPONENT glitch_free_mux_v2
         PORT ( CLK0               : IN  std_logic;
                CLK1               : IN  std_logic;
                Reset              : IN  std_logic;
                SELECTT            : IN  std_logic;
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
                CLK_OUT            : OUT std_logic );
      END COMPONENT;

      COMPONENT setting_timeee
         PORT ( CCw                : IN  std_logic;
                Cw                 : IN  std_logic;
                Onn                : IN  std_logic;
                State0             : IN  std_logic;
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
                Enable             : OUT std_logic;
                increment          : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus103 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus104 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus108 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus110 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus111 : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimBus112 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus67  : std_logic_vector( 20 DOWNTO 0 );
   SIGNAL s_logisimBus69  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus84  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus90  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus94  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus98  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimNet0   : std_logic;
   SIGNAL s_logisimNet1   : std_logic;
   SIGNAL s_logisimNet10  : std_logic;
   SIGNAL s_logisimNet100 : std_logic;
   SIGNAL s_logisimNet101 : std_logic;
   SIGNAL s_logisimNet102 : std_logic;
   SIGNAL s_logisimNet105 : std_logic;
   SIGNAL s_logisimNet106 : std_logic;
   SIGNAL s_logisimNet107 : std_logic;
   SIGNAL s_logisimNet109 : std_logic;
   SIGNAL s_logisimNet11  : std_logic;
   SIGNAL s_logisimNet12  : std_logic;
   SIGNAL s_logisimNet13  : std_logic;
   SIGNAL s_logisimNet14  : std_logic;
   SIGNAL s_logisimNet15  : std_logic;
   SIGNAL s_logisimNet16  : std_logic;
   SIGNAL s_logisimNet17  : std_logic;
   SIGNAL s_logisimNet18  : std_logic;
   SIGNAL s_logisimNet19  : std_logic;
   SIGNAL s_logisimNet2   : std_logic;
   SIGNAL s_logisimNet20  : std_logic;
   SIGNAL s_logisimNet21  : std_logic;
   SIGNAL s_logisimNet22  : std_logic;
   SIGNAL s_logisimNet23  : std_logic;
   SIGNAL s_logisimNet24  : std_logic;
   SIGNAL s_logisimNet25  : std_logic;
   SIGNAL s_logisimNet26  : std_logic;
   SIGNAL s_logisimNet27  : std_logic;
   SIGNAL s_logisimNet28  : std_logic;
   SIGNAL s_logisimNet29  : std_logic;
   SIGNAL s_logisimNet3   : std_logic;
   SIGNAL s_logisimNet30  : std_logic;
   SIGNAL s_logisimNet31  : std_logic;
   SIGNAL s_logisimNet32  : std_logic;
   SIGNAL s_logisimNet33  : std_logic;
   SIGNAL s_logisimNet34  : std_logic;
   SIGNAL s_logisimNet35  : std_logic;
   SIGNAL s_logisimNet36  : std_logic;
   SIGNAL s_logisimNet37  : std_logic;
   SIGNAL s_logisimNet38  : std_logic;
   SIGNAL s_logisimNet39  : std_logic;
   SIGNAL s_logisimNet4   : std_logic;
   SIGNAL s_logisimNet40  : std_logic;
   SIGNAL s_logisimNet41  : std_logic;
   SIGNAL s_logisimNet42  : std_logic;
   SIGNAL s_logisimNet43  : std_logic;
   SIGNAL s_logisimNet44  : std_logic;
   SIGNAL s_logisimNet45  : std_logic;
   SIGNAL s_logisimNet46  : std_logic;
   SIGNAL s_logisimNet47  : std_logic;
   SIGNAL s_logisimNet48  : std_logic;
   SIGNAL s_logisimNet49  : std_logic;
   SIGNAL s_logisimNet5   : std_logic;
   SIGNAL s_logisimNet50  : std_logic;
   SIGNAL s_logisimNet51  : std_logic;
   SIGNAL s_logisimNet52  : std_logic;
   SIGNAL s_logisimNet53  : std_logic;
   SIGNAL s_logisimNet54  : std_logic;
   SIGNAL s_logisimNet55  : std_logic;
   SIGNAL s_logisimNet56  : std_logic;
   SIGNAL s_logisimNet57  : std_logic;
   SIGNAL s_logisimNet58  : std_logic;
   SIGNAL s_logisimNet59  : std_logic;
   SIGNAL s_logisimNet6   : std_logic;
   SIGNAL s_logisimNet60  : std_logic;
   SIGNAL s_logisimNet61  : std_logic;
   SIGNAL s_logisimNet62  : std_logic;
   SIGNAL s_logisimNet63  : std_logic;
   SIGNAL s_logisimNet64  : std_logic;
   SIGNAL s_logisimNet65  : std_logic;
   SIGNAL s_logisimNet66  : std_logic;
   SIGNAL s_logisimNet68  : std_logic;
   SIGNAL s_logisimNet7   : std_logic;
   SIGNAL s_logisimNet70  : std_logic;
   SIGNAL s_logisimNet71  : std_logic;
   SIGNAL s_logisimNet72  : std_logic;
   SIGNAL s_logisimNet73  : std_logic;
   SIGNAL s_logisimNet74  : std_logic;
   SIGNAL s_logisimNet75  : std_logic;
   SIGNAL s_logisimNet76  : std_logic;
   SIGNAL s_logisimNet77  : std_logic;
   SIGNAL s_logisimNet78  : std_logic;
   SIGNAL s_logisimNet79  : std_logic;
   SIGNAL s_logisimNet8   : std_logic;
   SIGNAL s_logisimNet80  : std_logic;
   SIGNAL s_logisimNet81  : std_logic;
   SIGNAL s_logisimNet82  : std_logic;
   SIGNAL s_logisimNet83  : std_logic;
   SIGNAL s_logisimNet85  : std_logic;
   SIGNAL s_logisimNet86  : std_logic;
   SIGNAL s_logisimNet87  : std_logic;
   SIGNAL s_logisimNet88  : std_logic;
   SIGNAL s_logisimNet89  : std_logic;
   SIGNAL s_logisimNet9   : std_logic;
   SIGNAL s_logisimNet91  : std_logic;
   SIGNAL s_logisimNet92  : std_logic;
   SIGNAL s_logisimNet93  : std_logic;
   SIGNAL s_logisimNet95  : std_logic;
   SIGNAL s_logisimNet96  : std_logic;
   SIGNAL s_logisimNet97  : std_logic;
   SIGNAL s_logisimNet99  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all wiring is defined                                                 --
   --------------------------------------------------------------------------------
   s_logisimBus67(0)  <= s_logisimNet86;
   s_logisimBus67(1)  <= s_logisimNet34;
   s_logisimBus67(10) <= s_logisimNet80;
   s_logisimBus67(11) <= s_logisimNet0;
   s_logisimBus67(12) <= s_logisimNet70;
   s_logisimBus67(13) <= s_logisimNet106;
   s_logisimBus67(14) <= s_logisimNet92;
   s_logisimBus67(15) <= s_logisimNet53;
   s_logisimBus67(16) <= s_logisimNet19;
   s_logisimBus67(17) <= s_logisimNet97;
   s_logisimBus67(18) <= s_logisimNet73;
   s_logisimBus67(19) <= s_logisimNet107;
   s_logisimBus67(2)  <= s_logisimNet101;
   s_logisimBus67(20) <= s_logisimNet93;
   s_logisimBus67(3)  <= s_logisimNet76;
   s_logisimBus67(4)  <= s_logisimNet109;
   s_logisimBus67(5)  <= s_logisimNet95;
   s_logisimBus67(6)  <= s_logisimNet57;
   s_logisimBus67(7)  <= s_logisimNet105;
   s_logisimBus67(8)  <= s_logisimNet49;
   s_logisimBus67(9)  <= s_logisimNet102;
   s_logisimNet0      <= s_logisimBus94(3);
   s_logisimNet101    <= s_logisimBus98(2);
   s_logisimNet102    <= s_logisimBus94(1);
   s_logisimNet105    <= s_logisimBus112(3);
   s_logisimNet106    <= s_logisimBus110(1);
   s_logisimNet107    <= s_logisimBus111(3);
   s_logisimNet109    <= s_logisimBus112(0);
   s_logisimNet19     <= s_logisimBus111(0);
   s_logisimNet34     <= s_logisimBus98(1);
   s_logisimNet49     <= s_logisimBus94(0);
   s_logisimNet53     <= s_logisimBus110(3);
   s_logisimNet57     <= s_logisimBus112(2);
   s_logisimNet70     <= s_logisimBus110(0);
   s_logisimNet73     <= s_logisimBus111(2);
   s_logisimNet76     <= s_logisimBus98(3);
   s_logisimNet80     <= s_logisimBus94(2);
   s_logisimNet86     <= s_logisimBus98(0);
   s_logisimNet92     <= s_logisimBus110(2);
   s_logisimNet93     <= s_logisimBus111(4);
   s_logisimNet95     <= s_logisimBus112(1);
   s_logisimNet97     <= s_logisimBus111(1);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet100 <= CLK_seconds;
   s_logisimNet17  <= CWW;
   s_logisimNet2   <= Reset;
   s_logisimNet26  <= ONN;
   s_logisimNet38  <= CLK_64KHz;
   s_logisimNet83  <= CW;
   s_logisimNet96  <= State0;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   HOURS_MSD    <= s_logisimBus84(6 DOWNTO 0);
   HOUR_LSD     <= s_logisimBus104(6 DOWNTO 0);
   MINs_MSD     <= s_logisimBus90(6 DOWNTO 0);
   MinLSD       <= s_logisimBus108(6 DOWNTO 0);
   Seconds_MSD  <= s_logisimBus69(6 DOWNTO 0);
   current_time <= s_logisimBus67(20 DOWNTO 0);
   secondsLSD   <= s_logisimBus103(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : OR_GATE
      GENERIC MAP ( BubblesMask => "10" )
      PORT MAP ( input1 => s_logisimNet96,
                 input2 => s_logisimNet26,
                 result => s_logisimNet99 );

   ENable_gate : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet18,
                 input2 => s_logisimNet26,
                 result => s_logisimNet50 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   counter09_2 : counter09_gated
      PORT MAP ( CLK                => s_logisimNet7,
                 D0                 => s_logisimBus94(0),
                 D1                 => s_logisimBus94(1),
                 D2                 => s_logisimBus94(2),
                 D3                 => s_logisimBus94(3),
                 Enable             => s_logisimNet75,
                 Reset              => s_logisimNet2,
                 cout               => s_logisimNet74,
                 increment          => s_logisimNet14,
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

   counter05_2 : counter05_gated
      PORT MAP ( CLK                => s_logisimNet7,
                 D0                 => s_logisimBus110(0),
                 D1                 => s_logisimBus110(1),
                 D2                 => s_logisimBus110(2),
                 D3                 => s_logisimBus110(3),
                 Enable             => s_logisimNet74,
                 Reset              => s_logisimNet2,
                 cout               => s_logisimNet20,
                 increment          => s_logisimNet14,
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

   counter24h_1 : counter24h
      PORT MAP ( CLK                => s_logisimNet7,
                 Cout               => s_logisimNet88,
                 D0                 => s_logisimBus111(0),
                 D1                 => s_logisimBus111(1),
                 D2                 => s_logisimBus111(2),
                 D3                 => s_logisimBus111(3),
                 D4                 => s_logisimBus111(4),
                 Enable             => s_logisimNet20,
                 Reset              => s_logisimNet2,
                 increment          => s_logisimNet14,
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

   counter09_1 : counter09_gated
      PORT MAP ( CLK                => s_logisimNet7,
                 D0                 => s_logisimBus98(0),
                 D1                 => s_logisimBus98(1),
                 D2                 => s_logisimBus98(2),
                 D3                 => s_logisimBus98(3),
                 Enable             => s_logisimNet50,
                 Reset              => s_logisimNet2,
                 cout               => s_logisimNet42,
                 increment          => s_logisimNet14,
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

   counter05_1 : counter05_gated
      PORT MAP ( CLK                => s_logisimNet7,
                 D0                 => s_logisimBus112(0),
                 D1                 => s_logisimBus112(1),
                 D2                 => s_logisimBus112(2),
                 D3                 => s_logisimBus112(3),
                 Enable             => s_logisimNet42,
                 Reset              => s_logisimNet2,
                 cout               => s_logisimNet75,
                 increment          => s_logisimNet14,
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

   seven_segment_display_decoder_4 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus90(0),
                 b                  => s_logisimBus90(1),
                 c                  => s_logisimBus90(2),
                 d                  => s_logisimBus90(3),
                 e                  => s_logisimBus90(4),
                 f                  => s_logisimBus90(5),
                 g                  => s_logisimBus90(6),
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
                 w                  => s_logisimBus110(0),
                 x                  => s_logisimBus110(1),
                 y                  => s_logisimBus110(2),
                 z                  => s_logisimBus110(3) );

   seven_segment_display_decoder_3 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus108(0),
                 b                  => s_logisimBus108(1),
                 c                  => s_logisimBus108(2),
                 d                  => s_logisimBus108(3),
                 e                  => s_logisimBus108(4),
                 f                  => s_logisimBus108(5),
                 g                  => s_logisimBus108(6),
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
                 w                  => s_logisimBus94(0),
                 x                  => s_logisimBus94(1),
                 y                  => s_logisimBus94(2),
                 z                  => s_logisimBus94(3) );

   decoder24h_to_display_1 : decoder24h_to_display
      PORT MAP ( a0                 => s_logisimBus104(0),
                 a1                 => s_logisimBus84(0),
                 b0                 => s_logisimBus104(1),
                 b1                 => s_logisimBus84(1),
                 c0                 => s_logisimBus104(2),
                 c1                 => s_logisimBus84(2),
                 d0                 => s_logisimBus104(3),
                 d1                 => s_logisimBus84(3),
                 e0                 => s_logisimBus104(4),
                 e1                 => s_logisimBus84(4),
                 f0                 => s_logisimBus104(5),
                 f1                 => s_logisimBus84(5),
                 g0                 => s_logisimBus104(6),
                 g1                 => s_logisimBus84(6),
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
                 v                  => s_logisimBus111(0),
                 w                  => s_logisimBus111(1),
                 x                  => s_logisimBus111(2),
                 y                  => s_logisimBus111(3),
                 z                  => s_logisimBus111(4) );

   seven_segment_display_decoder_1 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus103(0),
                 b                  => s_logisimBus103(1),
                 c                  => s_logisimBus103(2),
                 d                  => s_logisimBus103(3),
                 e                  => s_logisimBus103(4),
                 f                  => s_logisimBus103(5),
                 g                  => s_logisimBus103(6),
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
                 w                  => s_logisimBus98(0),
                 x                  => s_logisimBus98(1),
                 y                  => s_logisimBus98(2),
                 z                  => s_logisimBus98(3) );

   seven_segment_display_decoder_2 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus69(0),
                 b                  => s_logisimBus69(1),
                 c                  => s_logisimBus69(2),
                 d                  => s_logisimBus69(3),
                 e                  => s_logisimBus69(4),
                 f                  => s_logisimBus69(5),
                 g                  => s_logisimBus69(6),
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
                 w                  => s_logisimBus112(0),
                 x                  => s_logisimBus112(1),
                 y                  => s_logisimBus112(2),
                 z                  => s_logisimBus112(3) );

   glitch_free_mux_v2_1 : glitch_free_mux_v2
      PORT MAP ( CLK0               => s_logisimNet38,
                 CLK1               => s_logisimNet100,
                 CLK_OUT            => s_logisimNet7,
                 Reset              => s_logisimNet2,
                 SELECTT            => s_logisimNet99,
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

   setting_timeee_1 : setting_timeee
      PORT MAP ( CCw                => s_logisimNet17,
                 Cw                 => s_logisimNet83,
                 Enable             => s_logisimNet18,
                 Onn                => s_logisimNet26,
                 State0             => s_logisimNet96,
                 increment          => s_logisimNet14,
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
