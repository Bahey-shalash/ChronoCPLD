--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : Timer                                                        ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Timer IS 

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

      COMPONENT XOR_GATE_ONEHOT
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                result : OUT std_logic );
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

      COMPONENT timer_small_logic
         PORT ( CCw                : IN  std_logic;
                Cw                 : IN  std_logic;
                ONNNN              : IN  std_logic;
                State3             : IN  std_logic;
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
                start_stop         : IN  std_logic;
                Enable             : OUT std_logic;
                increment          : OUT std_logic );
      END COMPONENT;

      COMPONENT toggle_button_gated
         PORT ( Buttonn            : IN  std_logic;
                CLK                : IN  std_logic;
                Reset              : IN  std_logic;
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
                outputtt           : OUT std_logic );
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

      COMPONENT timer_beeping_logic_and_off
         PORT ( HOURS              : IN  std_logic_vector( 4 DOWNTO 0 );
                MINS_LSD           : IN  std_logic_vector( 3 DOWNTO 0 );
                MINS_MSD           : IN  std_logic_vector( 3 DOWNTO 0 );
                SECONDSMSD         : IN  std_logic_vector( 3 DOWNTO 0 );
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
                seconds_LSD        : IN  std_logic_vector( 3 DOWNTO 0 );
                beep               : OUT std_logic;
                offffff            : OUT std_logic );
      END COMPONENT;

      COMPONENT toggle_button
         PORT ( Buttonn            : IN  std_logic;
                CLK                : IN  std_logic;
                Reset              : IN  std_logic;
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
                outputtt           : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0   : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus100 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus102 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus22  : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimBus54  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus58  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus66  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus67  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus77  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus85  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus95  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet1   : std_logic;
   SIGNAL s_logisimNet10  : std_logic;
   SIGNAL s_logisimNet101 : std_logic;
   SIGNAL s_logisimNet103 : std_logic;
   SIGNAL s_logisimNet104 : std_logic;
   SIGNAL s_logisimNet105 : std_logic;
   SIGNAL s_logisimNet106 : std_logic;
   SIGNAL s_logisimNet107 : std_logic;
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
   SIGNAL s_logisimNet55  : std_logic;
   SIGNAL s_logisimNet56  : std_logic;
   SIGNAL s_logisimNet57  : std_logic;
   SIGNAL s_logisimNet59  : std_logic;
   SIGNAL s_logisimNet6   : std_logic;
   SIGNAL s_logisimNet60  : std_logic;
   SIGNAL s_logisimNet61  : std_logic;
   SIGNAL s_logisimNet62  : std_logic;
   SIGNAL s_logisimNet63  : std_logic;
   SIGNAL s_logisimNet64  : std_logic;
   SIGNAL s_logisimNet65  : std_logic;
   SIGNAL s_logisimNet68  : std_logic;
   SIGNAL s_logisimNet69  : std_logic;
   SIGNAL s_logisimNet7   : std_logic;
   SIGNAL s_logisimNet70  : std_logic;
   SIGNAL s_logisimNet71  : std_logic;
   SIGNAL s_logisimNet72  : std_logic;
   SIGNAL s_logisimNet73  : std_logic;
   SIGNAL s_logisimNet74  : std_logic;
   SIGNAL s_logisimNet75  : std_logic;
   SIGNAL s_logisimNet76  : std_logic;
   SIGNAL s_logisimNet78  : std_logic;
   SIGNAL s_logisimNet79  : std_logic;
   SIGNAL s_logisimNet8   : std_logic;
   SIGNAL s_logisimNet80  : std_logic;
   SIGNAL s_logisimNet81  : std_logic;
   SIGNAL s_logisimNet82  : std_logic;
   SIGNAL s_logisimNet83  : std_logic;
   SIGNAL s_logisimNet84  : std_logic;
   SIGNAL s_logisimNet86  : std_logic;
   SIGNAL s_logisimNet87  : std_logic;
   SIGNAL s_logisimNet88  : std_logic;
   SIGNAL s_logisimNet89  : std_logic;
   SIGNAL s_logisimNet9   : std_logic;
   SIGNAL s_logisimNet90  : std_logic;
   SIGNAL s_logisimNet91  : std_logic;
   SIGNAL s_logisimNet92  : std_logic;
   SIGNAL s_logisimNet93  : std_logic;
   SIGNAL s_logisimNet94  : std_logic;
   SIGNAL s_logisimNet96  : std_logic;
   SIGNAL s_logisimNet97  : std_logic;
   SIGNAL s_logisimNet98  : std_logic;
   SIGNAL s_logisimNet99  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet101 <= logisimClockTree0(0);
   s_logisimNet72  <= logisimClockTree15(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet1   <= State3;
   s_logisimNet107 <= Reset;
   s_logisimNet27  <= CWW;
   s_logisimNet55  <= start_stop_timer;
   s_logisimNet70  <= seconds_CLK;
   s_logisimNet75  <= CLK_64KHz;
   s_logisimNet78  <= ONN;
   s_logisimNet87  <= confirm;
   s_logisimNet89  <= CW;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   BUZZER_ON   <= s_logisimNet98;
   HOURS_MSD   <= s_logisimBus54(6 DOWNTO 0);
   HOUR_LSD    <= s_logisimBus67(6 DOWNTO 0);
   MINS_LSD    <= s_logisimBus95(6 DOWNTO 0);
   MINS_MSD    <= s_logisimBus58(6 DOWNTO 0);
   SECONDS_MSD <= s_logisimBus102(6 DOWNTO 0);
   seconds_LSD <= s_logisimBus100(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- NOT Gate
   s_logisimNet56 <=  NOT s_logisimNet87;

   -- NOT Gate
   s_logisimNet104 <=  NOT s_logisimNet55;

   -- NOT Gate
   s_logisimNet73 <=  NOT s_logisimNet55;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet107,
                 input2 => s_logisimNet104,
                 result => s_logisimNet42 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet48,
                 input2 => s_logisimNet55,
                 result => s_logisimNet21 );

   GATES_3 : XOR_GATE_ONEHOT
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet31,
                 input2 => s_logisimNet13,
                 result => s_logisimNet76 );

   GATES_4 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet92,
                 input2 => s_logisimNet1,
                 input3 => s_logisimNet78,
                 input4 => s_logisimNet55,
                 result => s_logisimNet93 );

   GATES_5 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet107,
                 input2 => s_logisimNet73,
                 result => s_logisimNet32 );

   GATES_6 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimNet30,
                 result => s_logisimNet83 );

   GATES_7 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet103,
                 input2 => s_logisimNet101,
                 result => s_logisimNet98 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   glitch_free_mux_v2_1 : glitch_free_mux_v2
      PORT MAP ( CLK0               => s_logisimNet75,
                 CLK1               => s_logisimNet70,
                 CLK_OUT            => s_logisimNet105,
                 Reset              => s_logisimNet107,
                 SELECTT            => s_logisimNet83,
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

   timer_small_logic_1 : timer_small_logic
      PORT MAP ( CCw                => s_logisimNet27,
                 Cw                 => s_logisimNet89,
                 Enable             => s_logisimNet13,
                 ONNNN              => s_logisimNet78,
                 State3             => s_logisimNet1,
                 increment          => s_logisimNet106,
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
                 start_stop         => s_logisimNet55 );

   toggle_button_1 : toggle_button_gated
      PORT MAP ( Buttonn            => s_logisimNet21,
                 CLK                => s_logisimNet105,
                 Reset              => s_logisimNet42,
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
                 outputtt           => s_logisimNet31 );

   counter09_2 : counter09_gated
      PORT MAP ( CLK                => s_logisimNet105,
                 D0                 => s_logisimBus85(0),
                 D1                 => s_logisimBus85(1),
                 D2                 => s_logisimBus85(2),
                 D3                 => s_logisimBus85(3),
                 Enable             => s_logisimNet74,
                 Reset              => s_logisimNet107,
                 cout               => s_logisimNet57,
                 increment          => s_logisimNet106,
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
      PORT MAP ( CLK                => s_logisimNet105,
                 D0                 => s_logisimBus0(0),
                 D1                 => s_logisimBus0(1),
                 D2                 => s_logisimBus0(2),
                 D3                 => s_logisimBus0(3),
                 Enable             => s_logisimNet57,
                 Reset              => s_logisimNet107,
                 cout               => s_logisimNet91,
                 increment          => s_logisimNet106,
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
      PORT MAP ( CLK                => s_logisimNet105,
                 Cout               => s_logisimNet86,
                 D0                 => s_logisimBus22(0),
                 D1                 => s_logisimBus22(1),
                 D2                 => s_logisimBus22(2),
                 D3                 => s_logisimBus22(3),
                 D4                 => s_logisimBus22(4),
                 Enable             => s_logisimNet91,
                 Reset              => s_logisimNet107,
                 increment          => s_logisimNet106,
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
      PORT MAP ( CLK                => s_logisimNet105,
                 D0                 => s_logisimBus77(0),
                 D1                 => s_logisimBus77(1),
                 D2                 => s_logisimBus77(2),
                 D3                 => s_logisimBus77(3),
                 Enable             => s_logisimNet76,
                 Reset              => s_logisimNet107,
                 cout               => s_logisimNet52,
                 increment          => s_logisimNet106,
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
      PORT MAP ( CLK                => s_logisimNet105,
                 D0                 => s_logisimBus66(0),
                 D1                 => s_logisimBus66(1),
                 D2                 => s_logisimBus66(2),
                 D3                 => s_logisimBus66(3),
                 Enable             => s_logisimNet52,
                 Reset              => s_logisimNet107,
                 cout               => s_logisimNet74,
                 increment          => s_logisimNet106,
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

   seven_segment_display_decoder_3 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus95(0),
                 b                  => s_logisimBus95(1),
                 c                  => s_logisimBus95(2),
                 d                  => s_logisimBus95(3),
                 e                  => s_logisimBus95(4),
                 f                  => s_logisimBus95(5),
                 g                  => s_logisimBus95(6),
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
                 w                  => s_logisimBus85(0),
                 x                  => s_logisimBus85(1),
                 y                  => s_logisimBus85(2),
                 z                  => s_logisimBus85(3) );

   seven_segment_display_decoder_4 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus58(0),
                 b                  => s_logisimBus58(1),
                 c                  => s_logisimBus58(2),
                 d                  => s_logisimBus58(3),
                 e                  => s_logisimBus58(4),
                 f                  => s_logisimBus58(5),
                 g                  => s_logisimBus58(6),
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
                 w                  => s_logisimBus0(0),
                 x                  => s_logisimBus0(1),
                 y                  => s_logisimBus0(2),
                 z                  => s_logisimBus0(3) );

   decoder24h_to_display_1 : decoder24h_to_display
      PORT MAP ( a0                 => s_logisimBus67(0),
                 a1                 => s_logisimBus54(0),
                 b0                 => s_logisimBus67(1),
                 b1                 => s_logisimBus54(1),
                 c0                 => s_logisimBus67(2),
                 c1                 => s_logisimBus54(2),
                 d0                 => s_logisimBus67(3),
                 d1                 => s_logisimBus54(3),
                 e0                 => s_logisimBus67(4),
                 e1                 => s_logisimBus54(4),
                 f0                 => s_logisimBus67(5),
                 f1                 => s_logisimBus54(5),
                 g0                 => s_logisimBus67(6),
                 g1                 => s_logisimBus54(6),
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
                 v                  => s_logisimBus22(0),
                 w                  => s_logisimBus22(1),
                 x                  => s_logisimBus22(2),
                 y                  => s_logisimBus22(3),
                 z                  => s_logisimBus22(4) );

   seven_segment_display_decoder_1 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus100(0),
                 b                  => s_logisimBus100(1),
                 c                  => s_logisimBus100(2),
                 d                  => s_logisimBus100(3),
                 e                  => s_logisimBus100(4),
                 f                  => s_logisimBus100(5),
                 g                  => s_logisimBus100(6),
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
                 w                  => s_logisimBus77(0),
                 x                  => s_logisimBus77(1),
                 y                  => s_logisimBus77(2),
                 z                  => s_logisimBus77(3) );

   seven_segment_display_decoder_2 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus102(0),
                 b                  => s_logisimBus102(1),
                 c                  => s_logisimBus102(2),
                 d                  => s_logisimBus102(3),
                 e                  => s_logisimBus102(4),
                 f                  => s_logisimBus102(5),
                 g                  => s_logisimBus102(6),
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
                 w                  => s_logisimBus66(0),
                 x                  => s_logisimBus66(1),
                 y                  => s_logisimBus66(2),
                 z                  => s_logisimBus66(3) );

   timer_beeping_logic_and_off_1 : timer_beeping_logic_and_off
      PORT MAP ( HOURS              => s_logisimBus22(4 DOWNTO 0),
                 MINS_LSD           => s_logisimBus85(3 DOWNTO 0),
                 MINS_MSD           => s_logisimBus0(3 DOWNTO 0),
                 SECONDSMSD         => s_logisimBus66(3 DOWNTO 0),
                 beep               => s_logisimNet92,
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
                 offffff            => s_logisimNet48,
                 seconds_LSD        => s_logisimBus77(3 DOWNTO 0) );

   toggle_button_2 : toggle_button_gated
      PORT MAP ( Buttonn            => s_logisimNet93,
                 CLK                => s_logisimNet105,
                 Reset              => s_logisimNet32,
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
                 outputtt           => s_logisimNet103 );

   toggle_button_3 : toggle_button
      PORT MAP ( Buttonn            => s_logisimNet56,
                 CLK                => s_logisimNet72,
                 Reset              => s_logisimNet107,
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
                 outputtt           => s_logisimNet30 );

END platformIndependent;
