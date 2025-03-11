--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : ALARM                                                        ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF ALARM IS 

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

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
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

      COMPONENT alarm_setting
         PORT ( CCW                : IN  std_logic;
                CW                 : IN  std_logic;
                ONNNN              : IN  std_logic;
                START_STOP_ALARM   : IN  std_logic;
                State_ALARM        : IN  std_logic;
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

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus104 : std_logic_vector( 20 DOWNTO 0 );
   SIGNAL s_logisimBus106 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus107 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus115 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus116 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus117 : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimBus118 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus35  : std_logic_vector( 20 DOWNTO 0 );
   SIGNAL s_logisimBus54  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus75  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus88  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus94  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus99  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimNet0   : std_logic;
   SIGNAL s_logisimNet1   : std_logic;
   SIGNAL s_logisimNet10  : std_logic;
   SIGNAL s_logisimNet100 : std_logic;
   SIGNAL s_logisimNet101 : std_logic;
   SIGNAL s_logisimNet102 : std_logic;
   SIGNAL s_logisimNet103 : std_logic;
   SIGNAL s_logisimNet105 : std_logic;
   SIGNAL s_logisimNet108 : std_logic;
   SIGNAL s_logisimNet109 : std_logic;
   SIGNAL s_logisimNet11  : std_logic;
   SIGNAL s_logisimNet110 : std_logic;
   SIGNAL s_logisimNet111 : std_logic;
   SIGNAL s_logisimNet112 : std_logic;
   SIGNAL s_logisimNet113 : std_logic;
   SIGNAL s_logisimNet114 : std_logic;
   SIGNAL s_logisimNet119 : std_logic;
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
   SIGNAL s_logisimNet67  : std_logic;
   SIGNAL s_logisimNet68  : std_logic;
   SIGNAL s_logisimNet69  : std_logic;
   SIGNAL s_logisimNet7   : std_logic;
   SIGNAL s_logisimNet70  : std_logic;
   SIGNAL s_logisimNet71  : std_logic;
   SIGNAL s_logisimNet72  : std_logic;
   SIGNAL s_logisimNet73  : std_logic;
   SIGNAL s_logisimNet74  : std_logic;
   SIGNAL s_logisimNet76  : std_logic;
   SIGNAL s_logisimNet77  : std_logic;
   SIGNAL s_logisimNet78  : std_logic;
   SIGNAL s_logisimNet79  : std_logic;
   SIGNAL s_logisimNet8   : std_logic;
   SIGNAL s_logisimNet80  : std_logic;
   SIGNAL s_logisimNet81  : std_logic;
   SIGNAL s_logisimNet82  : std_logic;
   SIGNAL s_logisimNet83  : std_logic;
   SIGNAL s_logisimNet84  : std_logic;
   SIGNAL s_logisimNet85  : std_logic;
   SIGNAL s_logisimNet86  : std_logic;
   SIGNAL s_logisimNet87  : std_logic;
   SIGNAL s_logisimNet89  : std_logic;
   SIGNAL s_logisimNet9   : std_logic;
   SIGNAL s_logisimNet90  : std_logic;
   SIGNAL s_logisimNet91  : std_logic;
   SIGNAL s_logisimNet92  : std_logic;
   SIGNAL s_logisimNet93  : std_logic;
   SIGNAL s_logisimNet95  : std_logic;
   SIGNAL s_logisimNet96  : std_logic;
   SIGNAL s_logisimNet97  : std_logic;
   SIGNAL s_logisimNet98  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet81 <= logisimClockTree0(0);

   --------------------------------------------------------------------------------
   -- Here all wiring is defined                                                 --
   --------------------------------------------------------------------------------
   s_logisimBus35(0)  <= s_logisimNet93;
   s_logisimBus35(1)  <= s_logisimNet56;
   s_logisimBus35(10) <= s_logisimNet89;
   s_logisimBus35(11) <= s_logisimNet44;
   s_logisimBus35(12) <= s_logisimNet79;
   s_logisimBus35(13) <= s_logisimNet114;
   s_logisimBus35(14) <= s_logisimNet97;
   s_logisimBus35(15) <= s_logisimNet62;
   s_logisimBus35(16) <= s_logisimNet37;
   s_logisimBus35(17) <= s_logisimNet101;
   s_logisimBus35(18) <= s_logisimNet77;
   s_logisimBus35(19) <= s_logisimNet113;
   s_logisimBus35(2)  <= s_logisimNet105;
   s_logisimBus35(20) <= s_logisimNet96;
   s_logisimBus35(3)  <= s_logisimNet83;
   s_logisimBus35(4)  <= s_logisimNet21;
   s_logisimBus35(5)  <= s_logisimNet98;
   s_logisimBus35(6)  <= s_logisimNet71;
   s_logisimBus35(7)  <= s_logisimNet110;
   s_logisimBus35(8)  <= s_logisimNet64;
   s_logisimBus35(9)  <= s_logisimNet108;
   s_logisimNet101    <= s_logisimBus117(1);
   s_logisimNet105    <= s_logisimBus99(2);
   s_logisimNet108    <= s_logisimBus54(1);
   s_logisimNet110    <= s_logisimBus118(3);
   s_logisimNet113    <= s_logisimBus117(3);
   s_logisimNet114    <= s_logisimBus116(1);
   s_logisimNet21     <= s_logisimBus118(0);
   s_logisimNet37     <= s_logisimBus117(0);
   s_logisimNet44     <= s_logisimBus54(3);
   s_logisimNet56     <= s_logisimBus99(1);
   s_logisimNet62     <= s_logisimBus116(3);
   s_logisimNet64     <= s_logisimBus54(0);
   s_logisimNet71     <= s_logisimBus118(2);
   s_logisimNet77     <= s_logisimBus117(2);
   s_logisimNet79     <= s_logisimBus116(0);
   s_logisimNet83     <= s_logisimBus99(3);
   s_logisimNet89     <= s_logisimBus54(2);
   s_logisimNet93     <= s_logisimBus99(0);
   s_logisimNet96     <= s_logisimBus117(4);
   s_logisimNet97     <= s_logisimBus116(2);
   s_logisimNet98     <= s_logisimBus118(1);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus104(20 DOWNTO 0) <= current_time;
   s_logisimNet102              <= Seconds_clk;
   s_logisimNet109              <= START_STOP_ALARM;
   s_logisimNet111              <= State_ALARM;
   s_logisimNet119              <= CLK64Khz;
   s_logisimNet16               <= CW;
   s_logisimNet31               <= CWW;
   s_logisimNet47               <= ONN;
   s_logisimNet8                <= Reset;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   Beep        <= s_logisimNet103;
   HOURS_MSD   <= s_logisimBus88(6 DOWNTO 0);
   HOUR_LSD    <= s_logisimBus107(6 DOWNTO 0);
   MINs_MSD    <= s_logisimBus94(6 DOWNTO 0);
   MinLSD      <= s_logisimBus115(6 DOWNTO 0);
   Output_1    <= s_logisimNet112;
   Seconds_MSD <= s_logisimBus75(6 DOWNTO 0);
   secondsLSD  <= s_logisimBus106(6 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Do not connect

   -- NOT Gate
   s_logisimNet100 <=  NOT s_logisimNet112;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet76,
                 input2 => s_logisimNet112,
                 input3 => s_logisimNet47,
                 result => s_logisimNet60 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet86,
                 input2 => s_logisimNet81,
                 result => s_logisimNet103 );

   ARITH_3 : Comparator
      GENERIC MAP ( nrOfBits       => 21,
                    twosComplement => 1 )
      PORT MAP ( aEqualsB      => s_logisimNet76,
                 aGreaterThanB => OPEN,
                 aLessThanB    => OPEN,
                 dataA         => s_logisimBus35(20 DOWNTO 0),
                 dataB         => s_logisimBus104(20 DOWNTO 0) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   alarm_setting_1 : alarm_setting
      PORT MAP ( CCW                => s_logisimNet31,
                 CW                 => s_logisimNet16,
                 Enable             => s_logisimNet58,
                 ONNNN              => s_logisimNet47,
                 START_STOP_ALARM   => s_logisimNet112,
                 State_ALARM        => s_logisimNet111,
                 increment          => s_logisimNet29,
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

   counter09_2 : counter09_gated
      PORT MAP ( CLK                => s_logisimNet32,
                 D0                 => s_logisimBus54(0),
                 D1                 => s_logisimBus54(1),
                 D2                 => s_logisimBus54(2),
                 D3                 => s_logisimBus54(3),
                 Enable             => s_logisimNet72,
                 Reset              => s_logisimNet8,
                 cout               => s_logisimNet78,
                 increment          => s_logisimNet29,
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
      PORT MAP ( CLK                => s_logisimNet32,
                 D0                 => s_logisimBus116(0),
                 D1                 => s_logisimBus116(1),
                 D2                 => s_logisimBus116(2),
                 D3                 => s_logisimBus116(3),
                 Enable             => s_logisimNet78,
                 Reset              => s_logisimNet8,
                 cout               => s_logisimNet40,
                 increment          => s_logisimNet29,
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
      PORT MAP ( CLK                => s_logisimNet32,
                 Cout               => s_logisimNet92,
                 D0                 => s_logisimBus117(0),
                 D1                 => s_logisimBus117(1),
                 D2                 => s_logisimBus117(2),
                 D3                 => s_logisimBus117(3),
                 D4                 => s_logisimBus117(4),
                 Enable             => s_logisimNet40,
                 Reset              => s_logisimNet8,
                 increment          => s_logisimNet29,
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
      PORT MAP ( CLK                => s_logisimNet32,
                 D0                 => s_logisimBus99(0),
                 D1                 => s_logisimBus99(1),
                 D2                 => s_logisimBus99(2),
                 D3                 => s_logisimBus99(3),
                 Enable             => s_logisimNet58,
                 Reset              => s_logisimNet8,
                 cout               => s_logisimNet51,
                 increment          => s_logisimNet29,
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
      PORT MAP ( CLK                => s_logisimNet32,
                 D0                 => s_logisimBus118(0),
                 D1                 => s_logisimBus118(1),
                 D2                 => s_logisimBus118(2),
                 D3                 => s_logisimBus118(3),
                 Enable             => s_logisimNet51,
                 Reset              => s_logisimNet8,
                 cout               => s_logisimNet72,
                 increment          => s_logisimNet29,
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
      PORT MAP ( a                  => s_logisimBus94(0),
                 b                  => s_logisimBus94(1),
                 c                  => s_logisimBus94(2),
                 d                  => s_logisimBus94(3),
                 e                  => s_logisimBus94(4),
                 f                  => s_logisimBus94(5),
                 g                  => s_logisimBus94(6),
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
                 w                  => s_logisimBus116(0),
                 x                  => s_logisimBus116(1),
                 y                  => s_logisimBus116(2),
                 z                  => s_logisimBus116(3) );

   seven_segment_display_decoder_3 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus115(0),
                 b                  => s_logisimBus115(1),
                 c                  => s_logisimBus115(2),
                 d                  => s_logisimBus115(3),
                 e                  => s_logisimBus115(4),
                 f                  => s_logisimBus115(5),
                 g                  => s_logisimBus115(6),
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
                 w                  => s_logisimBus54(0),
                 x                  => s_logisimBus54(1),
                 y                  => s_logisimBus54(2),
                 z                  => s_logisimBus54(3) );

   decoder24h_to_display_1 : decoder24h_to_display
      PORT MAP ( a0                 => s_logisimBus107(0),
                 a1                 => s_logisimBus88(0),
                 b0                 => s_logisimBus107(1),
                 b1                 => s_logisimBus88(1),
                 c0                 => s_logisimBus107(2),
                 c1                 => s_logisimBus88(2),
                 d0                 => s_logisimBus107(3),
                 d1                 => s_logisimBus88(3),
                 e0                 => s_logisimBus107(4),
                 e1                 => s_logisimBus88(4),
                 f0                 => s_logisimBus107(5),
                 f1                 => s_logisimBus88(5),
                 g0                 => s_logisimBus107(6),
                 g1                 => s_logisimBus88(6),
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
                 v                  => s_logisimBus117(0),
                 w                  => s_logisimBus117(1),
                 x                  => s_logisimBus117(2),
                 y                  => s_logisimBus117(3),
                 z                  => s_logisimBus117(4) );

   seven_segment_display_decoder_1 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus106(0),
                 b                  => s_logisimBus106(1),
                 c                  => s_logisimBus106(2),
                 d                  => s_logisimBus106(3),
                 e                  => s_logisimBus106(4),
                 f                  => s_logisimBus106(5),
                 g                  => s_logisimBus106(6),
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
                 w                  => s_logisimBus99(0),
                 x                  => s_logisimBus99(1),
                 y                  => s_logisimBus99(2),
                 z                  => s_logisimBus99(3) );

   seven_segment_display_decoder_2 : seven_segment_display_decoder
      PORT MAP ( a                  => s_logisimBus75(0),
                 b                  => s_logisimBus75(1),
                 c                  => s_logisimBus75(2),
                 d                  => s_logisimBus75(3),
                 e                  => s_logisimBus75(4),
                 f                  => s_logisimBus75(5),
                 g                  => s_logisimBus75(6),
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
                 w                  => s_logisimBus118(0),
                 x                  => s_logisimBus118(1),
                 y                  => s_logisimBus118(2),
                 z                  => s_logisimBus118(3) );

   SR_Latch_1 : SR_Latch
      PORT MAP ( OUTTTT             => s_logisimNet86,
                 Reset              => s_logisimNet100,
                 Set                => s_logisimNet60,
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

   glitch_free_mux_v2_1 : glitch_free_mux_v2
      PORT MAP ( CLK0               => s_logisimNet119,
                 CLK1               => s_logisimNet102,
                 CLK_OUT            => s_logisimNet32,
                 Reset              => s_logisimNet8,
                 SELECTT            => s_logisimNet47,
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

   toggle_button_1 : toggle_button_gated
      PORT MAP ( Buttonn            => s_logisimNet109,
                 CLK                => s_logisimNet32,
                 Reset              => s_logisimNet8,
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
                 outputtt           => s_logisimNet112 );

END platformIndependent;
