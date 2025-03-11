--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF main IS 

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

      COMPONENT state_selector_Decder
         PORT ( D0                 : IN  std_logic;
                D1                 : IN  std_logic;
                D2                 : IN  std_logic;
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
                State1             : OUT std_logic;
                State2             : OUT std_logic;
                State3             : OUT std_logic;
                State4             : OUT std_logic;
                State5             : OUT std_logic;
                State7             : OUT std_logic;
                Time_setting       : OUT std_logic;
                state6             : OUT std_logic );
      END COMPONENT;

      COMPONENT ALARM
         PORT ( CLK64Khz           : IN  std_logic;
                CW                 : IN  std_logic;
                CWW                : IN  std_logic;
                ONN                : IN  std_logic;
                Reset              : IN  std_logic;
                START_STOP_ALARM   : IN  std_logic;
                Seconds_clk        : IN  std_logic;
                State_ALARM        : IN  std_logic;
                current_time       : IN  std_logic_vector( 20 DOWNTO 0 );
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
                Beep               : OUT std_logic;
                HOURS_MSD          : OUT std_logic_vector( 6 DOWNTO 0 );
                HOUR_LSD           : OUT std_logic_vector( 6 DOWNTO 0 );
                MINs_MSD           : OUT std_logic_vector( 6 DOWNTO 0 );
                MinLSD             : OUT std_logic_vector( 6 DOWNTO 0 );
                Output_1           : OUT std_logic;
                Seconds_MSD        : OUT std_logic_vector( 6 DOWNTO 0 );
                secondsLSD         : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT game10sec
         PORT ( FASTEST_CLK        : IN  std_logic;
                Reset              : IN  std_logic;
                START1_STOP0       : IN  std_logic;
                State7             : IN  std_logic;
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
                display0           : OUT std_logic_vector( 6 DOWNTO 0 );
                display1           : OUT std_logic_vector( 6 DOWNTO 0 );
                display2           : OUT std_logic_vector( 6 DOWNTO 0 );
                display3           : OUT std_logic_vector( 6 DOWNTO 0 );
                display4           : OUT std_logic_vector( 6 DOWNTO 0 );
                display5           : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT MP3
         PORT ( ON_OFF_MUSIC       : IN  std_logic;
                SONG_SELECTOR      : IN  std_logic;
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
                state_MP3          : IN  std_logic;
                display0           : OUT std_logic_vector( 6 DOWNTO 0 );
                display1           : OUT std_logic_vector( 6 DOWNTO 0 );
                display2           : OUT std_logic_vector( 6 DOWNTO 0 );
                display3           : OUT std_logic_vector( 6 DOWNTO 0 );
                display4           : OUT std_logic_vector( 6 DOWNTO 0 );
                display5           : OUT std_logic_vector( 6 DOWNTO 0 );
                pin2_buzzer        : OUT std_logic );
      END COMPONENT;

      COMPONENT Timer
         PORT ( CLK_64KHz          : IN  std_logic;
                CW                 : IN  std_logic;
                CWW                : IN  std_logic;
                ONN                : IN  std_logic;
                Reset              : IN  std_logic;
                State3             : IN  std_logic;
                confirm            : IN  std_logic;
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
                seconds_CLK        : IN  std_logic;
                start_stop_timer   : IN  std_logic;
                BUZZER_ON          : OUT std_logic;
                HOURS_MSD          : OUT std_logic_vector( 6 DOWNTO 0 );
                HOUR_LSD           : OUT std_logic_vector( 6 DOWNTO 0 );
                MINS_LSD           : OUT std_logic_vector( 6 DOWNTO 0 );
                MINS_MSD           : OUT std_logic_vector( 6 DOWNTO 0 );
                SECONDS_MSD        : OUT std_logic_vector( 6 DOWNTO 0 );
                seconds_LSD        : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT stop_watch
         PORT ( FASTEST_CLK        : IN  std_logic;
                Reset              : IN  std_logic;
                START1_STOP0       : IN  std_logic;
                State2             : IN  std_logic;
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
                display0gfedcba    : OUT std_logic_vector( 6 DOWNTO 0 );
                display1gfedcba    : OUT std_logic_vector( 6 DOWNTO 0 );
                display2gfedcba    : OUT std_logic_vector( 6 DOWNTO 0 );
                display3gfedcba    : OUT std_logic_vector( 6 DOWNTO 0 );
                display4gfedcba    : OUT std_logic_vector( 6 DOWNTO 0 );
                display5gfedcba    : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Game
         PORT ( CCW                : IN  std_logic;
                CLK                : IN  std_logic;
                Cw                 : IN  std_logic;
                Reset_game         : IN  std_logic;
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
                state_game         : IN  std_logic;
                display0           : OUT std_logic_vector( 6 DOWNTO 0 );
                display1           : OUT std_logic_vector( 6 DOWNTO 0 );
                display2           : OUT std_logic_vector( 6 DOWNTO 0 );
                display3           : OUT std_logic_vector( 6 DOWNTO 0 );
                display4           : OUT std_logic_vector( 6 DOWNTO 0 );
                display5           : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT ALL_counter
         PORT ( CLK_64KHz          : IN  std_logic;
                CLK_seconds        : IN  std_logic;
                CW                 : IN  std_logic;
                CWW                : IN  std_logic;
                ONN                : IN  std_logic;
                Reset              : IN  std_logic;
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
                HOURS_MSD          : OUT std_logic_vector( 6 DOWNTO 0 );
                HOUR_LSD           : OUT std_logic_vector( 6 DOWNTO 0 );
                MINs_MSD           : OUT std_logic_vector( 6 DOWNTO 0 );
                MinLSD             : OUT std_logic_vector( 6 DOWNTO 0 );
                Seconds_MSD        : OUT std_logic_vector( 6 DOWNTO 0 );
                current_time       : OUT std_logic_vector( 20 DOWNTO 0 );
                secondsLSD         : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT display_selector
         PORT ( D0                 : IN  std_logic;
                D1                 : IN  std_logic;
                D2                 : IN  std_logic;
                a_func0            : IN  std_logic;
                a_func1            : IN  std_logic;
                a_func2            : IN  std_logic;
                a_func3            : IN  std_logic;
                a_func4            : IN  std_logic;
                a_func5            : IN  std_logic;
                a_func6            : IN  std_logic;
                a_func7            : IN  std_logic;
                b_func0            : IN  std_logic;
                b_func1            : IN  std_logic;
                b_func2            : IN  std_logic;
                b_func3            : IN  std_logic;
                b_func4            : IN  std_logic;
                b_func5            : IN  std_logic;
                b_func6            : IN  std_logic;
                b_func7            : IN  std_logic;
                c_func0            : IN  std_logic;
                c_func1            : IN  std_logic;
                c_func2            : IN  std_logic;
                c_func3            : IN  std_logic;
                c_func4            : IN  std_logic;
                c_func5            : IN  std_logic;
                c_func6            : IN  std_logic;
                c_func7            : IN  std_logic;
                d_func0            : IN  std_logic;
                d_func1            : IN  std_logic;
                d_func2            : IN  std_logic;
                d_func3            : IN  std_logic;
                d_func4            : IN  std_logic;
                d_func5            : IN  std_logic;
                d_func6            : IN  std_logic;
                d_func7            : IN  std_logic;
                e_func0            : IN  std_logic;
                e_func1            : IN  std_logic;
                e_func2            : IN  std_logic;
                e_func3            : IN  std_logic;
                e_func4            : IN  std_logic;
                e_func5            : IN  std_logic;
                e_func6            : IN  std_logic;
                e_func7            : IN  std_logic;
                f_func0            : IN  std_logic;
                f_func1            : IN  std_logic;
                f_func2            : IN  std_logic;
                f_func3            : IN  std_logic;
                f_func4            : IN  std_logic;
                f_func5            : IN  std_logic;
                f_func6            : IN  std_logic;
                f_func7            : IN  std_logic;
                g_func0            : IN  std_logic;
                g_func1            : IN  std_logic;
                g_func2            : IN  std_logic;
                g_func3            : IN  std_logic;
                g_func4            : IN  std_logic;
                g_func5            : IN  std_logic;
                g_func6            : IN  std_logic;
                g_func7            : IN  std_logic;
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
                a_display          : OUT std_logic;
                b_display          : OUT std_logic;
                c_display          : OUT std_logic;
                d_display          : OUT std_logic;
                e_display          : OUT std_logic;
                f_display          : OUT std_logic;
                g_display          : OUT std_logic );
      END COMPONENT;

      COMPONENT bouncing_filter
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

      COMPONENT Decoder_Rotation
         PORT ( CHA                : IN  std_logic;
                CHB                : IN  std_logic;
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
                CCW                : OUT std_logic;
                CW                 : OUT std_logic );
      END COMPONENT;

      COMPONENT state_selector_FSM
         PORT ( CLk                : IN  std_logic;
                Reset              : IN  std_logic;
                inputtttttttttt    : IN  std_logic;
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
   SIGNAL s_logisimBus0   : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus1   : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus10  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus102 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus106 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus109 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus122 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus13  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus14  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus145 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus15  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus150 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus152 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus156 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus164 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus169 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus174 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus175 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus188 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus21  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus210 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus217 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus220 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus254 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus281 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus29  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus296 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus301 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus307 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus33  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus36  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus55  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus58  : std_logic_vector( 20 DOWNTO 0 );
   SIGNAL s_logisimBus61  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus64  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus65  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus75  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus8   : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus85  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus87  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus89  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus90  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus91  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus94  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet100 : std_logic;
   SIGNAL s_logisimNet101 : std_logic;
   SIGNAL s_logisimNet103 : std_logic;
   SIGNAL s_logisimNet104 : std_logic;
   SIGNAL s_logisimNet105 : std_logic;
   SIGNAL s_logisimNet107 : std_logic;
   SIGNAL s_logisimNet108 : std_logic;
   SIGNAL s_logisimNet11  : std_logic;
   SIGNAL s_logisimNet110 : std_logic;
   SIGNAL s_logisimNet111 : std_logic;
   SIGNAL s_logisimNet112 : std_logic;
   SIGNAL s_logisimNet113 : std_logic;
   SIGNAL s_logisimNet114 : std_logic;
   SIGNAL s_logisimNet115 : std_logic;
   SIGNAL s_logisimNet116 : std_logic;
   SIGNAL s_logisimNet117 : std_logic;
   SIGNAL s_logisimNet118 : std_logic;
   SIGNAL s_logisimNet119 : std_logic;
   SIGNAL s_logisimNet12  : std_logic;
   SIGNAL s_logisimNet120 : std_logic;
   SIGNAL s_logisimNet121 : std_logic;
   SIGNAL s_logisimNet123 : std_logic;
   SIGNAL s_logisimNet124 : std_logic;
   SIGNAL s_logisimNet125 : std_logic;
   SIGNAL s_logisimNet126 : std_logic;
   SIGNAL s_logisimNet127 : std_logic;
   SIGNAL s_logisimNet128 : std_logic;
   SIGNAL s_logisimNet129 : std_logic;
   SIGNAL s_logisimNet130 : std_logic;
   SIGNAL s_logisimNet131 : std_logic;
   SIGNAL s_logisimNet132 : std_logic;
   SIGNAL s_logisimNet133 : std_logic;
   SIGNAL s_logisimNet134 : std_logic;
   SIGNAL s_logisimNet135 : std_logic;
   SIGNAL s_logisimNet136 : std_logic;
   SIGNAL s_logisimNet137 : std_logic;
   SIGNAL s_logisimNet138 : std_logic;
   SIGNAL s_logisimNet139 : std_logic;
   SIGNAL s_logisimNet140 : std_logic;
   SIGNAL s_logisimNet141 : std_logic;
   SIGNAL s_logisimNet142 : std_logic;
   SIGNAL s_logisimNet143 : std_logic;
   SIGNAL s_logisimNet144 : std_logic;
   SIGNAL s_logisimNet146 : std_logic;
   SIGNAL s_logisimNet147 : std_logic;
   SIGNAL s_logisimNet148 : std_logic;
   SIGNAL s_logisimNet149 : std_logic;
   SIGNAL s_logisimNet151 : std_logic;
   SIGNAL s_logisimNet153 : std_logic;
   SIGNAL s_logisimNet154 : std_logic;
   SIGNAL s_logisimNet155 : std_logic;
   SIGNAL s_logisimNet157 : std_logic;
   SIGNAL s_logisimNet158 : std_logic;
   SIGNAL s_logisimNet159 : std_logic;
   SIGNAL s_logisimNet16  : std_logic;
   SIGNAL s_logisimNet160 : std_logic;
   SIGNAL s_logisimNet161 : std_logic;
   SIGNAL s_logisimNet162 : std_logic;
   SIGNAL s_logisimNet163 : std_logic;
   SIGNAL s_logisimNet165 : std_logic;
   SIGNAL s_logisimNet166 : std_logic;
   SIGNAL s_logisimNet167 : std_logic;
   SIGNAL s_logisimNet168 : std_logic;
   SIGNAL s_logisimNet17  : std_logic;
   SIGNAL s_logisimNet170 : std_logic;
   SIGNAL s_logisimNet171 : std_logic;
   SIGNAL s_logisimNet172 : std_logic;
   SIGNAL s_logisimNet173 : std_logic;
   SIGNAL s_logisimNet176 : std_logic;
   SIGNAL s_logisimNet177 : std_logic;
   SIGNAL s_logisimNet178 : std_logic;
   SIGNAL s_logisimNet179 : std_logic;
   SIGNAL s_logisimNet18  : std_logic;
   SIGNAL s_logisimNet180 : std_logic;
   SIGNAL s_logisimNet181 : std_logic;
   SIGNAL s_logisimNet182 : std_logic;
   SIGNAL s_logisimNet183 : std_logic;
   SIGNAL s_logisimNet184 : std_logic;
   SIGNAL s_logisimNet185 : std_logic;
   SIGNAL s_logisimNet186 : std_logic;
   SIGNAL s_logisimNet187 : std_logic;
   SIGNAL s_logisimNet189 : std_logic;
   SIGNAL s_logisimNet19  : std_logic;
   SIGNAL s_logisimNet190 : std_logic;
   SIGNAL s_logisimNet191 : std_logic;
   SIGNAL s_logisimNet192 : std_logic;
   SIGNAL s_logisimNet193 : std_logic;
   SIGNAL s_logisimNet194 : std_logic;
   SIGNAL s_logisimNet195 : std_logic;
   SIGNAL s_logisimNet196 : std_logic;
   SIGNAL s_logisimNet197 : std_logic;
   SIGNAL s_logisimNet198 : std_logic;
   SIGNAL s_logisimNet199 : std_logic;
   SIGNAL s_logisimNet2   : std_logic;
   SIGNAL s_logisimNet20  : std_logic;
   SIGNAL s_logisimNet200 : std_logic;
   SIGNAL s_logisimNet201 : std_logic;
   SIGNAL s_logisimNet202 : std_logic;
   SIGNAL s_logisimNet203 : std_logic;
   SIGNAL s_logisimNet204 : std_logic;
   SIGNAL s_logisimNet205 : std_logic;
   SIGNAL s_logisimNet206 : std_logic;
   SIGNAL s_logisimNet207 : std_logic;
   SIGNAL s_logisimNet208 : std_logic;
   SIGNAL s_logisimNet209 : std_logic;
   SIGNAL s_logisimNet211 : std_logic;
   SIGNAL s_logisimNet212 : std_logic;
   SIGNAL s_logisimNet213 : std_logic;
   SIGNAL s_logisimNet214 : std_logic;
   SIGNAL s_logisimNet215 : std_logic;
   SIGNAL s_logisimNet216 : std_logic;
   SIGNAL s_logisimNet218 : std_logic;
   SIGNAL s_logisimNet219 : std_logic;
   SIGNAL s_logisimNet22  : std_logic;
   SIGNAL s_logisimNet221 : std_logic;
   SIGNAL s_logisimNet222 : std_logic;
   SIGNAL s_logisimNet223 : std_logic;
   SIGNAL s_logisimNet224 : std_logic;
   SIGNAL s_logisimNet225 : std_logic;
   SIGNAL s_logisimNet226 : std_logic;
   SIGNAL s_logisimNet227 : std_logic;
   SIGNAL s_logisimNet228 : std_logic;
   SIGNAL s_logisimNet229 : std_logic;
   SIGNAL s_logisimNet23  : std_logic;
   SIGNAL s_logisimNet230 : std_logic;
   SIGNAL s_logisimNet231 : std_logic;
   SIGNAL s_logisimNet232 : std_logic;
   SIGNAL s_logisimNet233 : std_logic;
   SIGNAL s_logisimNet234 : std_logic;
   SIGNAL s_logisimNet235 : std_logic;
   SIGNAL s_logisimNet236 : std_logic;
   SIGNAL s_logisimNet237 : std_logic;
   SIGNAL s_logisimNet238 : std_logic;
   SIGNAL s_logisimNet239 : std_logic;
   SIGNAL s_logisimNet24  : std_logic;
   SIGNAL s_logisimNet240 : std_logic;
   SIGNAL s_logisimNet241 : std_logic;
   SIGNAL s_logisimNet242 : std_logic;
   SIGNAL s_logisimNet243 : std_logic;
   SIGNAL s_logisimNet244 : std_logic;
   SIGNAL s_logisimNet245 : std_logic;
   SIGNAL s_logisimNet246 : std_logic;
   SIGNAL s_logisimNet247 : std_logic;
   SIGNAL s_logisimNet248 : std_logic;
   SIGNAL s_logisimNet249 : std_logic;
   SIGNAL s_logisimNet25  : std_logic;
   SIGNAL s_logisimNet250 : std_logic;
   SIGNAL s_logisimNet251 : std_logic;
   SIGNAL s_logisimNet252 : std_logic;
   SIGNAL s_logisimNet253 : std_logic;
   SIGNAL s_logisimNet255 : std_logic;
   SIGNAL s_logisimNet256 : std_logic;
   SIGNAL s_logisimNet257 : std_logic;
   SIGNAL s_logisimNet258 : std_logic;
   SIGNAL s_logisimNet259 : std_logic;
   SIGNAL s_logisimNet26  : std_logic;
   SIGNAL s_logisimNet260 : std_logic;
   SIGNAL s_logisimNet261 : std_logic;
   SIGNAL s_logisimNet262 : std_logic;
   SIGNAL s_logisimNet263 : std_logic;
   SIGNAL s_logisimNet264 : std_logic;
   SIGNAL s_logisimNet265 : std_logic;
   SIGNAL s_logisimNet266 : std_logic;
   SIGNAL s_logisimNet267 : std_logic;
   SIGNAL s_logisimNet268 : std_logic;
   SIGNAL s_logisimNet269 : std_logic;
   SIGNAL s_logisimNet27  : std_logic;
   SIGNAL s_logisimNet270 : std_logic;
   SIGNAL s_logisimNet271 : std_logic;
   SIGNAL s_logisimNet272 : std_logic;
   SIGNAL s_logisimNet273 : std_logic;
   SIGNAL s_logisimNet274 : std_logic;
   SIGNAL s_logisimNet275 : std_logic;
   SIGNAL s_logisimNet276 : std_logic;
   SIGNAL s_logisimNet277 : std_logic;
   SIGNAL s_logisimNet278 : std_logic;
   SIGNAL s_logisimNet279 : std_logic;
   SIGNAL s_logisimNet28  : std_logic;
   SIGNAL s_logisimNet280 : std_logic;
   SIGNAL s_logisimNet282 : std_logic;
   SIGNAL s_logisimNet283 : std_logic;
   SIGNAL s_logisimNet284 : std_logic;
   SIGNAL s_logisimNet285 : std_logic;
   SIGNAL s_logisimNet286 : std_logic;
   SIGNAL s_logisimNet287 : std_logic;
   SIGNAL s_logisimNet288 : std_logic;
   SIGNAL s_logisimNet289 : std_logic;
   SIGNAL s_logisimNet290 : std_logic;
   SIGNAL s_logisimNet291 : std_logic;
   SIGNAL s_logisimNet292 : std_logic;
   SIGNAL s_logisimNet293 : std_logic;
   SIGNAL s_logisimNet294 : std_logic;
   SIGNAL s_logisimNet295 : std_logic;
   SIGNAL s_logisimNet297 : std_logic;
   SIGNAL s_logisimNet298 : std_logic;
   SIGNAL s_logisimNet299 : std_logic;
   SIGNAL s_logisimNet3   : std_logic;
   SIGNAL s_logisimNet30  : std_logic;
   SIGNAL s_logisimNet300 : std_logic;
   SIGNAL s_logisimNet302 : std_logic;
   SIGNAL s_logisimNet303 : std_logic;
   SIGNAL s_logisimNet304 : std_logic;
   SIGNAL s_logisimNet305 : std_logic;
   SIGNAL s_logisimNet306 : std_logic;
   SIGNAL s_logisimNet308 : std_logic;
   SIGNAL s_logisimNet309 : std_logic;
   SIGNAL s_logisimNet31  : std_logic;
   SIGNAL s_logisimNet310 : std_logic;
   SIGNAL s_logisimNet311 : std_logic;
   SIGNAL s_logisimNet312 : std_logic;
   SIGNAL s_logisimNet313 : std_logic;
   SIGNAL s_logisimNet314 : std_logic;
   SIGNAL s_logisimNet315 : std_logic;
   SIGNAL s_logisimNet316 : std_logic;
   SIGNAL s_logisimNet317 : std_logic;
   SIGNAL s_logisimNet318 : std_logic;
   SIGNAL s_logisimNet319 : std_logic;
   SIGNAL s_logisimNet32  : std_logic;
   SIGNAL s_logisimNet320 : std_logic;
   SIGNAL s_logisimNet321 : std_logic;
   SIGNAL s_logisimNet322 : std_logic;
   SIGNAL s_logisimNet323 : std_logic;
   SIGNAL s_logisimNet324 : std_logic;
   SIGNAL s_logisimNet325 : std_logic;
   SIGNAL s_logisimNet326 : std_logic;
   SIGNAL s_logisimNet327 : std_logic;
   SIGNAL s_logisimNet328 : std_logic;
   SIGNAL s_logisimNet329 : std_logic;
   SIGNAL s_logisimNet330 : std_logic;
   SIGNAL s_logisimNet331 : std_logic;
   SIGNAL s_logisimNet332 : std_logic;
   SIGNAL s_logisimNet333 : std_logic;
   SIGNAL s_logisimNet334 : std_logic;
   SIGNAL s_logisimNet335 : std_logic;
   SIGNAL s_logisimNet336 : std_logic;
   SIGNAL s_logisimNet337 : std_logic;
   SIGNAL s_logisimNet338 : std_logic;
   SIGNAL s_logisimNet339 : std_logic;
   SIGNAL s_logisimNet34  : std_logic;
   SIGNAL s_logisimNet340 : std_logic;
   SIGNAL s_logisimNet341 : std_logic;
   SIGNAL s_logisimNet342 : std_logic;
   SIGNAL s_logisimNet343 : std_logic;
   SIGNAL s_logisimNet344 : std_logic;
   SIGNAL s_logisimNet345 : std_logic;
   SIGNAL s_logisimNet346 : std_logic;
   SIGNAL s_logisimNet347 : std_logic;
   SIGNAL s_logisimNet348 : std_logic;
   SIGNAL s_logisimNet349 : std_logic;
   SIGNAL s_logisimNet35  : std_logic;
   SIGNAL s_logisimNet350 : std_logic;
   SIGNAL s_logisimNet351 : std_logic;
   SIGNAL s_logisimNet352 : std_logic;
   SIGNAL s_logisimNet353 : std_logic;
   SIGNAL s_logisimNet354 : std_logic;
   SIGNAL s_logisimNet355 : std_logic;
   SIGNAL s_logisimNet356 : std_logic;
   SIGNAL s_logisimNet357 : std_logic;
   SIGNAL s_logisimNet358 : std_logic;
   SIGNAL s_logisimNet359 : std_logic;
   SIGNAL s_logisimNet360 : std_logic;
   SIGNAL s_logisimNet361 : std_logic;
   SIGNAL s_logisimNet362 : std_logic;
   SIGNAL s_logisimNet363 : std_logic;
   SIGNAL s_logisimNet364 : std_logic;
   SIGNAL s_logisimNet365 : std_logic;
   SIGNAL s_logisimNet366 : std_logic;
   SIGNAL s_logisimNet367 : std_logic;
   SIGNAL s_logisimNet368 : std_logic;
   SIGNAL s_logisimNet369 : std_logic;
   SIGNAL s_logisimNet37  : std_logic;
   SIGNAL s_logisimNet370 : std_logic;
   SIGNAL s_logisimNet371 : std_logic;
   SIGNAL s_logisimNet372 : std_logic;
   SIGNAL s_logisimNet373 : std_logic;
   SIGNAL s_logisimNet374 : std_logic;
   SIGNAL s_logisimNet375 : std_logic;
   SIGNAL s_logisimNet376 : std_logic;
   SIGNAL s_logisimNet377 : std_logic;
   SIGNAL s_logisimNet378 : std_logic;
   SIGNAL s_logisimNet379 : std_logic;
   SIGNAL s_logisimNet38  : std_logic;
   SIGNAL s_logisimNet380 : std_logic;
   SIGNAL s_logisimNet381 : std_logic;
   SIGNAL s_logisimNet382 : std_logic;
   SIGNAL s_logisimNet383 : std_logic;
   SIGNAL s_logisimNet384 : std_logic;
   SIGNAL s_logisimNet385 : std_logic;
   SIGNAL s_logisimNet386 : std_logic;
   SIGNAL s_logisimNet387 : std_logic;
   SIGNAL s_logisimNet388 : std_logic;
   SIGNAL s_logisimNet389 : std_logic;
   SIGNAL s_logisimNet39  : std_logic;
   SIGNAL s_logisimNet390 : std_logic;
   SIGNAL s_logisimNet391 : std_logic;
   SIGNAL s_logisimNet392 : std_logic;
   SIGNAL s_logisimNet393 : std_logic;
   SIGNAL s_logisimNet394 : std_logic;
   SIGNAL s_logisimNet395 : std_logic;
   SIGNAL s_logisimNet396 : std_logic;
   SIGNAL s_logisimNet397 : std_logic;
   SIGNAL s_logisimNet398 : std_logic;
   SIGNAL s_logisimNet399 : std_logic;
   SIGNAL s_logisimNet4   : std_logic;
   SIGNAL s_logisimNet40  : std_logic;
   SIGNAL s_logisimNet400 : std_logic;
   SIGNAL s_logisimNet401 : std_logic;
   SIGNAL s_logisimNet402 : std_logic;
   SIGNAL s_logisimNet403 : std_logic;
   SIGNAL s_logisimNet404 : std_logic;
   SIGNAL s_logisimNet405 : std_logic;
   SIGNAL s_logisimNet406 : std_logic;
   SIGNAL s_logisimNet407 : std_logic;
   SIGNAL s_logisimNet408 : std_logic;
   SIGNAL s_logisimNet409 : std_logic;
   SIGNAL s_logisimNet41  : std_logic;
   SIGNAL s_logisimNet410 : std_logic;
   SIGNAL s_logisimNet411 : std_logic;
   SIGNAL s_logisimNet412 : std_logic;
   SIGNAL s_logisimNet413 : std_logic;
   SIGNAL s_logisimNet414 : std_logic;
   SIGNAL s_logisimNet415 : std_logic;
   SIGNAL s_logisimNet416 : std_logic;
   SIGNAL s_logisimNet417 : std_logic;
   SIGNAL s_logisimNet418 : std_logic;
   SIGNAL s_logisimNet419 : std_logic;
   SIGNAL s_logisimNet42  : std_logic;
   SIGNAL s_logisimNet420 : std_logic;
   SIGNAL s_logisimNet421 : std_logic;
   SIGNAL s_logisimNet422 : std_logic;
   SIGNAL s_logisimNet423 : std_logic;
   SIGNAL s_logisimNet424 : std_logic;
   SIGNAL s_logisimNet425 : std_logic;
   SIGNAL s_logisimNet426 : std_logic;
   SIGNAL s_logisimNet427 : std_logic;
   SIGNAL s_logisimNet428 : std_logic;
   SIGNAL s_logisimNet429 : std_logic;
   SIGNAL s_logisimNet43  : std_logic;
   SIGNAL s_logisimNet430 : std_logic;
   SIGNAL s_logisimNet431 : std_logic;
   SIGNAL s_logisimNet432 : std_logic;
   SIGNAL s_logisimNet433 : std_logic;
   SIGNAL s_logisimNet434 : std_logic;
   SIGNAL s_logisimNet435 : std_logic;
   SIGNAL s_logisimNet436 : std_logic;
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
   SIGNAL s_logisimNet56  : std_logic;
   SIGNAL s_logisimNet57  : std_logic;
   SIGNAL s_logisimNet59  : std_logic;
   SIGNAL s_logisimNet6   : std_logic;
   SIGNAL s_logisimNet60  : std_logic;
   SIGNAL s_logisimNet62  : std_logic;
   SIGNAL s_logisimNet63  : std_logic;
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
   SIGNAL s_logisimNet80  : std_logic;
   SIGNAL s_logisimNet81  : std_logic;
   SIGNAL s_logisimNet82  : std_logic;
   SIGNAL s_logisimNet83  : std_logic;
   SIGNAL s_logisimNet84  : std_logic;
   SIGNAL s_logisimNet86  : std_logic;
   SIGNAL s_logisimNet88  : std_logic;
   SIGNAL s_logisimNet9   : std_logic;
   SIGNAL s_logisimNet92  : std_logic;
   SIGNAL s_logisimNet93  : std_logic;
   SIGNAL s_logisimNet95  : std_logic;
   SIGNAL s_logisimNet96  : std_logic;
   SIGNAL s_logisimNet97  : std_logic;
   SIGNAL s_logisimNet98  : std_logic;
   SIGNAL s_logisimNet99  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet196 <= logisimClockTree16(0);
   s_logisimNet343 <= logisimClockTree1(0);
   s_logisimNet435 <= logisimClockTree15(0);
   s_logisimNet59  <= logisimClockTree1(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet105 <= CHB_PIN5;
   s_logisimNet160 <= ONN;
   s_logisimNet23  <= Reset_stopwatch;
   s_logisimNet246 <= ON_OFF_Music;
   s_logisimNet293 <= song_selector;
   s_logisimNet312 <= start_stop_timer;
   s_logisimNet320 <= Reset_game;
   s_logisimNet322 <= CH_3_Pin6;
   s_logisimNet338 <= start_stop_alarm;
   s_logisimNet341 <= CHA_PIN4;
   s_logisimNet430 <= start_stop_stopwatch;
   s_logisimNet433 <= Reset_timer;
   s_logisimNet97  <= Start_stop_game;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   GND         <= s_logisimNet251;
   PIN2_Buzzer <= s_logisimNet117;
   Vcc         <= s_logisimNet348;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet136  <=  '0';


   -- Ground
    s_logisimNet251  <=  '0';


   -- Power
    s_logisimNet348  <=  '1';


   -- 7-Segment Display: displayy_5
   logisimOutputBubbles(0) <= s_logisimNet318;
   logisimOutputBubbles(1) <= s_logisimNet336;
   logisimOutputBubbles(2) <= s_logisimNet325;
   logisimOutputBubbles(3) <= s_logisimNet230;
   logisimOutputBubbles(4) <= s_logisimNet350;
   logisimOutputBubbles(5) <= s_logisimNet267;
   logisimOutputBubbles(6) <= s_logisimNet302;
   logisimOutputBubbles(7) <= '0';

   -- 7-Segment Display: displayy_4
   logisimOutputBubbles(10) <= s_logisimNet425;
   logisimOutputBubbles(11) <= s_logisimNet426;
   logisimOutputBubbles(12) <= s_logisimNet427;
   logisimOutputBubbles(13) <= s_logisimNet428;
   logisimOutputBubbles(14) <= s_logisimNet429;
   logisimOutputBubbles(15) <= '0';
   logisimOutputBubbles(8)  <= s_logisimNet423;
   logisimOutputBubbles(9)  <= s_logisimNet424;

   -- LED: ALARMMM_LED
   logisimOutputBubbles(16) <= s_logisimNet177;

   -- LED: state_game_LED
   logisimOutputBubbles(17) <= s_logisimNet149;

   -- LED: Time_setting_LED
   logisimOutputBubbles(18) <= s_logisimNet116;

   -- LED: TIMERR_LED
   logisimOutputBubbles(19) <= s_logisimNet201;

   -- LED: Normal_watch_mode_LED
   logisimOutputBubbles(20) <= s_logisimNet257;

   -- LED: STOPWATCH_LED
   logisimOutputBubbles(21) <= s_logisimNet255;

   -- LED: MP3_LED
   logisimOutputBubbles(22) <= s_logisimNet46;

   -- LED: game_10SECC_LED
   logisimOutputBubbles(23) <= s_logisimNet50;

   -- 7-Segment Display: displayy_3
   logisimOutputBubbles(24) <= s_logisimNet298;
   logisimOutputBubbles(25) <= s_logisimNet323;
   logisimOutputBubbles(26) <= s_logisimNet344;
   logisimOutputBubbles(27) <= s_logisimNet209;
   logisimOutputBubbles(28) <= s_logisimNet173;
   logisimOutputBubbles(29) <= s_logisimNet243;
   logisimOutputBubbles(30) <= s_logisimNet284;
   logisimOutputBubbles(31) <= '0';

   -- 7-Segment Display: displayy_2
   logisimOutputBubbles(32) <= s_logisimNet319;
   logisimOutputBubbles(33) <= s_logisimNet337;
   logisimOutputBubbles(34) <= s_logisimNet62;
   logisimOutputBubbles(35) <= s_logisimNet214;
   logisimOutputBubbles(36) <= s_logisimNet219;
   logisimOutputBubbles(37) <= s_logisimNet283;
   logisimOutputBubbles(38) <= s_logisimNet303;
   logisimOutputBubbles(39) <= '0';

   -- 7-Segment Display: displayy_1
   logisimOutputBubbles(40) <= s_logisimNet311;
   logisimOutputBubbles(41) <= s_logisimNet335;
   logisimOutputBubbles(42) <= s_logisimNet181;
   logisimOutputBubbles(43) <= s_logisimNet192;
   logisimOutputBubbles(44) <= s_logisimNet213;
   logisimOutputBubbles(45) <= s_logisimNet266;
   logisimOutputBubbles(46) <= s_logisimNet299;
   logisimOutputBubbles(47) <= '0';

   -- 7-Segment Display: displayy_0
   logisimOutputBubbles(48) <= s_logisimNet340;
   logisimOutputBubbles(49) <= s_logisimNet331;
   logisimOutputBubbles(50) <= s_logisimNet82;
   logisimOutputBubbles(51) <= s_logisimNet215;
   logisimOutputBubbles(52) <= s_logisimNet310;
   logisimOutputBubbles(53) <= s_logisimNet253;
   logisimOutputBubbles(54) <= s_logisimNet292;
   logisimOutputBubbles(55) <= '0';

   -- LED: ALARM_ON_LED
   logisimOutputBubbles(56) <= s_logisimNet315;

   -- Button: Reset
   s_logisimNet436 <= logisimInputBubbles(0);

   -- Button: STATE_SELECTOR_BUTTON
   s_logisimNet236 <= logisimInputBubbles(1);

   -- LED: ON_OFF_LED
   logisimOutputBubbles(57) <= s_logisimNet353;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet282,
                 input2 => s_logisimNet436,
                 result => s_logisimNet232 );

   GATES_2 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet436,
                 input2 => s_logisimNet352,
                 result => s_logisimNet278 );

   GATES_3 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet436,
                 input2 => s_logisimNet235,
                 result => s_logisimNet25 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet353,
                 input2 => s_logisimNet191,
                 result => s_logisimNet100 );

   GATES_5 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet436,
                 input2 => s_logisimNet235,
                 result => s_logisimNet19 );

   GATES_6 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet354,
                 input2 => s_logisimNet333,
                 result => s_logisimNet117 );

   PLEXERS_7 : Multiplexer_8
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimNet136,
                 muxIn_1 => s_logisimNet136,
                 muxIn_2 => s_logisimNet136,
                 muxIn_3 => s_logisimNet355,
                 muxIn_4 => s_logisimNet354,
                 muxIn_5 => s_logisimNet136,
                 muxIn_6 => s_logisimNet342,
                 muxIn_7 => s_logisimNet136,
                 muxOut  => s_logisimNet333,
                 sel     => s_logisimBus156(2 DOWNTO 0) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   state_selector_Decder_1 : state_selector_Decder
      PORT MAP ( D0                 => s_logisimBus156(0),
                 D1                 => s_logisimBus156(1),
                 D2                 => s_logisimBus156(2),
                 State1             => s_logisimNet257,
                 State2             => s_logisimNet255,
                 State3             => s_logisimNet201,
                 State4             => s_logisimNet177,
                 State5             => s_logisimNet149,
                 State7             => s_logisimNet50,
                 Time_setting       => s_logisimNet116,
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
                 state6             => s_logisimNet46 );

   ALARM_1 : ALARM
      PORT MAP ( Beep               => s_logisimNet354,
                 CLK64Khz           => s_logisimNet343,
                 CW                 => s_logisimNet432,
                 CWW                => s_logisimNet431,
                 HOURS_MSD          => s_logisimBus0(6 DOWNTO 0),
                 HOUR_LSD           => s_logisimBus29(6 DOWNTO 0),
                 MINs_MSD           => s_logisimBus91(6 DOWNTO 0),
                 MinLSD             => s_logisimBus220(6 DOWNTO 0),
                 ONN                => s_logisimNet353,
                 Output_1           => s_logisimNet315,
                 Reset              => s_logisimNet436,
                 START_STOP_ALARM   => s_logisimNet274,
                 Seconds_MSD        => s_logisimBus109(6 DOWNTO 0),
                 Seconds_clk        => s_logisimNet435,
                 State_ALARM        => s_logisimNet177,
                 current_time       => s_logisimBus58(20 DOWNTO 0),
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
                 secondsLSD         => s_logisimBus87(6 DOWNTO 0) );

   game10sec_1 : game10sec
      PORT MAP ( FASTEST_CLK        => s_logisimNet196,
                 Reset              => s_logisimNet25,
                 START1_STOP0       => s_logisimNet191,
                 State7             => s_logisimNet50,
                 display0           => s_logisimBus174(6 DOWNTO 0),
                 display1           => s_logisimBus85(6 DOWNTO 0),
                 display2           => s_logisimBus89(6 DOWNTO 0),
                 display3           => s_logisimBus210(6 DOWNTO 0),
                 display4           => s_logisimBus94(6 DOWNTO 0),
                 display5           => s_logisimBus13(6 DOWNTO 0),
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

   MP3_1 : MP3
      PORT MAP ( ON_OFF_MUSIC       => s_logisimNet330,
                 SONG_SELECTOR      => s_logisimNet121,
                 display0           => s_logisimBus61(6 DOWNTO 0),
                 display1           => s_logisimBus75(6 DOWNTO 0),
                 display2           => s_logisimBus307(6 DOWNTO 0),
                 display3           => s_logisimBus150(6 DOWNTO 0),
                 display4           => s_logisimBus1(6 DOWNTO 0),
                 display5           => s_logisimBus102(6 DOWNTO 0),
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
                 pin2_buzzer        => s_logisimNet342,
                 state_MP3          => s_logisimNet46 );

   Timer_1 : Timer
      PORT MAP ( BUZZER_ON          => s_logisimNet355,
                 CLK_64KHz          => s_logisimNet435,
                 CW                 => s_logisimNet432,
                 CWW                => s_logisimNet431,
                 HOURS_MSD          => s_logisimBus36(6 DOWNTO 0),
                 HOUR_LSD           => s_logisimBus281(6 DOWNTO 0),
                 MINS_LSD           => s_logisimBus164(6 DOWNTO 0),
                 MINS_MSD           => s_logisimBus296(6 DOWNTO 0),
                 ONN                => s_logisimNet353,
                 Reset              => s_logisimNet232,
                 SECONDS_MSD        => s_logisimBus122(6 DOWNTO 0),
                 State3             => s_logisimNet201,
                 confirm            => s_logisimNet322,
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
                 seconds_CLK        => s_logisimNet343,
                 seconds_LSD        => s_logisimBus145(6 DOWNTO 0),
                 start_stop_timer   => s_logisimNet329 );

   stop_watch_1 : stop_watch
      PORT MAP ( FASTEST_CLK        => s_logisimNet196,
                 Reset              => s_logisimNet278,
                 START1_STOP0       => s_logisimNet314,
                 State2             => s_logisimNet255,
                 display0gfedcba    => s_logisimBus21(6 DOWNTO 0),
                 display1gfedcba    => s_logisimBus217(6 DOWNTO 0),
                 display2gfedcba    => s_logisimBus175(6 DOWNTO 0),
                 display3gfedcba    => s_logisimBus14(6 DOWNTO 0),
                 display4gfedcba    => s_logisimBus33(6 DOWNTO 0),
                 display5gfedcba    => s_logisimBus65(6 DOWNTO 0),
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

   Game_1 : Game
      PORT MAP ( CCW                => s_logisimNet431,
                 CLK                => s_logisimNet59,
                 Cw                 => s_logisimNet432,
                 Reset_game         => s_logisimNet19,
                 display0           => s_logisimBus152(6 DOWNTO 0),
                 display1           => s_logisimBus64(6 DOWNTO 0),
                 display2           => s_logisimBus90(6 DOWNTO 0),
                 display3           => s_logisimBus254(6 DOWNTO 0),
                 display4           => s_logisimBus301(6 DOWNTO 0),
                 display5           => s_logisimBus15(6 DOWNTO 0),
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
                 start_stop         => s_logisimNet100,
                 state_game         => s_logisimNet149 );

   ALL_counter_1 : ALL_counter
      PORT MAP ( CLK_64KHz          => s_logisimNet435,
                 CLK_seconds        => s_logisimNet343,
                 CW                 => s_logisimNet432,
                 CWW                => s_logisimNet431,
                 HOURS_MSD          => s_logisimBus8(6 DOWNTO 0),
                 HOUR_LSD           => s_logisimBus169(6 DOWNTO 0),
                 MINs_MSD           => s_logisimBus106(6 DOWNTO 0),
                 MinLSD             => s_logisimBus55(6 DOWNTO 0),
                 ONN                => s_logisimNet353,
                 Reset              => s_logisimNet436,
                 Seconds_MSD        => s_logisimBus188(6 DOWNTO 0),
                 State0             => s_logisimNet116,
                 current_time       => s_logisimBus58(20 DOWNTO 0),
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
                 secondsLSD         => s_logisimBus10(6 DOWNTO 0) );

   DISPLAY0 : display_selector
      PORT MAP ( D0                 => s_logisimBus156(0),
                 D1                 => s_logisimBus156(1),
                 D2                 => s_logisimBus156(2),
                 a_display          => s_logisimNet340,
                 a_func0            => s_logisimBus10(0),
                 a_func1            => s_logisimBus10(0),
                 a_func2            => s_logisimBus21(0),
                 a_func3            => s_logisimBus145(0),
                 a_func4            => s_logisimBus87(0),
                 a_func5            => s_logisimBus152(0),
                 a_func6            => s_logisimBus61(0),
                 a_func7            => s_logisimBus174(0),
                 b_display          => s_logisimNet331,
                 b_func0            => s_logisimBus10(1),
                 b_func1            => s_logisimBus10(1),
                 b_func2            => s_logisimBus21(1),
                 b_func3            => s_logisimBus145(1),
                 b_func4            => s_logisimBus87(1),
                 b_func5            => s_logisimBus152(1),
                 b_func6            => s_logisimBus61(1),
                 b_func7            => s_logisimBus174(1),
                 c_display          => s_logisimNet82,
                 c_func0            => s_logisimBus10(2),
                 c_func1            => s_logisimBus10(2),
                 c_func2            => s_logisimBus21(2),
                 c_func3            => s_logisimBus145(2),
                 c_func4            => s_logisimBus87(2),
                 c_func5            => s_logisimBus152(2),
                 c_func6            => s_logisimBus61(2),
                 c_func7            => s_logisimBus174(2),
                 d_display          => s_logisimNet215,
                 d_func0            => s_logisimBus10(3),
                 d_func1            => s_logisimBus10(3),
                 d_func2            => s_logisimBus21(3),
                 d_func3            => s_logisimBus145(3),
                 d_func4            => s_logisimBus87(3),
                 d_func5            => s_logisimBus152(3),
                 d_func6            => s_logisimBus61(3),
                 d_func7            => s_logisimBus174(3),
                 e_display          => s_logisimNet310,
                 e_func0            => s_logisimBus10(4),
                 e_func1            => s_logisimBus10(4),
                 e_func2            => s_logisimBus21(4),
                 e_func3            => s_logisimBus145(4),
                 e_func4            => s_logisimBus87(4),
                 e_func5            => s_logisimBus152(4),
                 e_func6            => s_logisimBus61(4),
                 e_func7            => s_logisimBus174(4),
                 f_display          => s_logisimNet253,
                 f_func0            => s_logisimBus10(5),
                 f_func1            => s_logisimBus10(5),
                 f_func2            => s_logisimBus21(5),
                 f_func3            => s_logisimBus145(5),
                 f_func4            => s_logisimBus87(5),
                 f_func5            => s_logisimBus152(5),
                 f_func6            => s_logisimBus61(5),
                 f_func7            => s_logisimBus174(5),
                 g_display          => s_logisimNet292,
                 g_func0            => s_logisimBus10(6),
                 g_func1            => s_logisimBus10(6),
                 g_func2            => s_logisimBus21(6),
                 g_func3            => s_logisimBus145(6),
                 g_func4            => s_logisimBus87(6),
                 g_func5            => s_logisimBus152(6),
                 g_func6            => s_logisimBus61(6),
                 g_func7            => s_logisimBus174(6),
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

   DIsplay1 : display_selector
      PORT MAP ( D0                 => s_logisimBus156(0),
                 D1                 => s_logisimBus156(1),
                 D2                 => s_logisimBus156(2),
                 a_display          => s_logisimNet311,
                 a_func0            => s_logisimBus188(0),
                 a_func1            => s_logisimBus188(0),
                 a_func2            => s_logisimBus217(0),
                 a_func3            => s_logisimBus122(0),
                 a_func4            => s_logisimBus109(0),
                 a_func5            => s_logisimBus64(0),
                 a_func6            => s_logisimBus75(0),
                 a_func7            => s_logisimBus85(0),
                 b_display          => s_logisimNet335,
                 b_func0            => s_logisimBus188(1),
                 b_func1            => s_logisimBus188(1),
                 b_func2            => s_logisimBus217(1),
                 b_func3            => s_logisimBus122(1),
                 b_func4            => s_logisimBus109(1),
                 b_func5            => s_logisimBus64(1),
                 b_func6            => s_logisimBus75(1),
                 b_func7            => s_logisimBus85(1),
                 c_display          => s_logisimNet181,
                 c_func0            => s_logisimBus188(2),
                 c_func1            => s_logisimBus188(2),
                 c_func2            => s_logisimBus217(2),
                 c_func3            => s_logisimBus122(2),
                 c_func4            => s_logisimBus109(2),
                 c_func5            => s_logisimBus64(2),
                 c_func6            => s_logisimBus75(2),
                 c_func7            => s_logisimBus85(2),
                 d_display          => s_logisimNet192,
                 d_func0            => s_logisimBus188(3),
                 d_func1            => s_logisimBus188(3),
                 d_func2            => s_logisimBus217(3),
                 d_func3            => s_logisimBus122(3),
                 d_func4            => s_logisimBus109(3),
                 d_func5            => s_logisimBus64(3),
                 d_func6            => s_logisimBus75(3),
                 d_func7            => s_logisimBus85(3),
                 e_display          => s_logisimNet213,
                 e_func0            => s_logisimBus188(4),
                 e_func1            => s_logisimBus188(4),
                 e_func2            => s_logisimBus217(4),
                 e_func3            => s_logisimBus122(4),
                 e_func4            => s_logisimBus109(4),
                 e_func5            => s_logisimBus64(4),
                 e_func6            => s_logisimBus75(4),
                 e_func7            => s_logisimBus85(4),
                 f_display          => s_logisimNet266,
                 f_func0            => s_logisimBus188(5),
                 f_func1            => s_logisimBus188(5),
                 f_func2            => s_logisimBus217(5),
                 f_func3            => s_logisimBus122(5),
                 f_func4            => s_logisimBus109(5),
                 f_func5            => s_logisimBus64(5),
                 f_func6            => s_logisimBus75(5),
                 f_func7            => s_logisimBus85(5),
                 g_display          => s_logisimNet299,
                 g_func0            => s_logisimBus188(6),
                 g_func1            => s_logisimBus188(6),
                 g_func2            => s_logisimBus217(6),
                 g_func3            => s_logisimBus122(6),
                 g_func4            => s_logisimBus109(6),
                 g_func5            => s_logisimBus64(6),
                 g_func6            => s_logisimBus75(6),
                 g_func7            => s_logisimBus85(6),
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

   Display2 : display_selector
      PORT MAP ( D0                 => s_logisimBus156(0),
                 D1                 => s_logisimBus156(1),
                 D2                 => s_logisimBus156(2),
                 a_display          => s_logisimNet319,
                 a_func0            => s_logisimBus55(0),
                 a_func1            => s_logisimBus55(0),
                 a_func2            => s_logisimBus175(0),
                 a_func3            => s_logisimBus164(0),
                 a_func4            => s_logisimBus220(0),
                 a_func5            => s_logisimBus90(0),
                 a_func6            => s_logisimBus307(0),
                 a_func7            => s_logisimBus89(0),
                 b_display          => s_logisimNet337,
                 b_func0            => s_logisimBus55(1),
                 b_func1            => s_logisimBus55(1),
                 b_func2            => s_logisimBus175(1),
                 b_func3            => s_logisimBus164(1),
                 b_func4            => s_logisimBus220(1),
                 b_func5            => s_logisimBus90(1),
                 b_func6            => s_logisimBus307(1),
                 b_func7            => s_logisimBus89(1),
                 c_display          => s_logisimNet62,
                 c_func0            => s_logisimBus55(2),
                 c_func1            => s_logisimBus55(2),
                 c_func2            => s_logisimBus175(2),
                 c_func3            => s_logisimBus164(2),
                 c_func4            => s_logisimBus220(2),
                 c_func5            => s_logisimBus90(2),
                 c_func6            => s_logisimBus307(2),
                 c_func7            => s_logisimBus89(2),
                 d_display          => s_logisimNet214,
                 d_func0            => s_logisimBus55(3),
                 d_func1            => s_logisimBus55(3),
                 d_func2            => s_logisimBus175(3),
                 d_func3            => s_logisimBus164(3),
                 d_func4            => s_logisimBus220(3),
                 d_func5            => s_logisimBus90(3),
                 d_func6            => s_logisimBus307(3),
                 d_func7            => s_logisimBus89(3),
                 e_display          => s_logisimNet219,
                 e_func0            => s_logisimBus55(4),
                 e_func1            => s_logisimBus55(4),
                 e_func2            => s_logisimBus175(4),
                 e_func3            => s_logisimBus164(4),
                 e_func4            => s_logisimBus220(4),
                 e_func5            => s_logisimBus90(4),
                 e_func6            => s_logisimBus307(4),
                 e_func7            => s_logisimBus89(4),
                 f_display          => s_logisimNet283,
                 f_func0            => s_logisimBus55(5),
                 f_func1            => s_logisimBus55(5),
                 f_func2            => s_logisimBus175(5),
                 f_func3            => s_logisimBus164(5),
                 f_func4            => s_logisimBus220(5),
                 f_func5            => s_logisimBus90(5),
                 f_func6            => s_logisimBus307(5),
                 f_func7            => s_logisimBus89(5),
                 g_display          => s_logisimNet303,
                 g_func0            => s_logisimBus55(6),
                 g_func1            => s_logisimBus55(6),
                 g_func2            => s_logisimBus175(6),
                 g_func3            => s_logisimBus164(6),
                 g_func4            => s_logisimBus220(6),
                 g_func5            => s_logisimBus90(6),
                 g_func6            => s_logisimBus307(6),
                 g_func7            => s_logisimBus89(6),
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

   display3 : display_selector
      PORT MAP ( D0                 => s_logisimBus156(0),
                 D1                 => s_logisimBus156(1),
                 D2                 => s_logisimBus156(2),
                 a_display          => s_logisimNet298,
                 a_func0            => s_logisimBus106(0),
                 a_func1            => s_logisimBus106(0),
                 a_func2            => s_logisimBus14(0),
                 a_func3            => s_logisimBus296(0),
                 a_func4            => s_logisimBus91(0),
                 a_func5            => s_logisimBus254(0),
                 a_func6            => s_logisimBus150(0),
                 a_func7            => s_logisimBus210(0),
                 b_display          => s_logisimNet323,
                 b_func0            => s_logisimBus106(1),
                 b_func1            => s_logisimBus106(1),
                 b_func2            => s_logisimBus14(1),
                 b_func3            => s_logisimBus296(1),
                 b_func4            => s_logisimBus91(1),
                 b_func5            => s_logisimBus254(1),
                 b_func6            => s_logisimBus150(1),
                 b_func7            => s_logisimBus210(1),
                 c_display          => s_logisimNet344,
                 c_func0            => s_logisimBus106(2),
                 c_func1            => s_logisimBus106(2),
                 c_func2            => s_logisimBus14(2),
                 c_func3            => s_logisimBus296(2),
                 c_func4            => s_logisimBus91(2),
                 c_func5            => s_logisimBus254(2),
                 c_func6            => s_logisimBus150(2),
                 c_func7            => s_logisimBus210(2),
                 d_display          => s_logisimNet209,
                 d_func0            => s_logisimBus106(3),
                 d_func1            => s_logisimBus106(3),
                 d_func2            => s_logisimBus14(3),
                 d_func3            => s_logisimBus296(3),
                 d_func4            => s_logisimBus91(3),
                 d_func5            => s_logisimBus254(3),
                 d_func6            => s_logisimBus150(3),
                 d_func7            => s_logisimBus210(3),
                 e_display          => s_logisimNet173,
                 e_func0            => s_logisimBus106(4),
                 e_func1            => s_logisimBus106(4),
                 e_func2            => s_logisimBus14(4),
                 e_func3            => s_logisimBus296(4),
                 e_func4            => s_logisimBus91(4),
                 e_func5            => s_logisimBus254(4),
                 e_func6            => s_logisimBus150(4),
                 e_func7            => s_logisimBus210(4),
                 f_display          => s_logisimNet243,
                 f_func0            => s_logisimBus106(5),
                 f_func1            => s_logisimBus106(5),
                 f_func2            => s_logisimBus14(5),
                 f_func3            => s_logisimBus296(5),
                 f_func4            => s_logisimBus91(5),
                 f_func5            => s_logisimBus254(5),
                 f_func6            => s_logisimBus150(5),
                 f_func7            => s_logisimBus210(5),
                 g_display          => s_logisimNet284,
                 g_func0            => s_logisimBus106(6),
                 g_func1            => s_logisimBus106(6),
                 g_func2            => s_logisimBus14(6),
                 g_func3            => s_logisimBus296(6),
                 g_func4            => s_logisimBus91(6),
                 g_func5            => s_logisimBus254(6),
                 g_func6            => s_logisimBus150(6),
                 g_func7            => s_logisimBus210(6),
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

   display4 : display_selector
      PORT MAP ( D0                 => s_logisimBus156(0),
                 D1                 => s_logisimBus156(1),
                 D2                 => s_logisimBus156(2),
                 a_display          => s_logisimNet423,
                 a_func0            => s_logisimBus169(0),
                 a_func1            => s_logisimBus169(0),
                 a_func2            => s_logisimBus33(0),
                 a_func3            => s_logisimBus281(0),
                 a_func4            => s_logisimBus29(0),
                 a_func5            => s_logisimBus301(0),
                 a_func6            => s_logisimBus1(0),
                 a_func7            => s_logisimBus94(0),
                 b_display          => s_logisimNet424,
                 b_func0            => s_logisimBus169(1),
                 b_func1            => s_logisimBus169(1),
                 b_func2            => s_logisimBus33(1),
                 b_func3            => s_logisimBus281(1),
                 b_func4            => s_logisimBus29(1),
                 b_func5            => s_logisimBus301(1),
                 b_func6            => s_logisimBus1(1),
                 b_func7            => s_logisimBus94(1),
                 c_display          => s_logisimNet425,
                 c_func0            => s_logisimBus169(2),
                 c_func1            => s_logisimBus169(2),
                 c_func2            => s_logisimBus33(2),
                 c_func3            => s_logisimBus281(2),
                 c_func4            => s_logisimBus29(2),
                 c_func5            => s_logisimBus301(2),
                 c_func6            => s_logisimBus1(2),
                 c_func7            => s_logisimBus94(2),
                 d_display          => s_logisimNet426,
                 d_func0            => s_logisimBus169(3),
                 d_func1            => s_logisimBus169(3),
                 d_func2            => s_logisimBus33(3),
                 d_func3            => s_logisimBus281(3),
                 d_func4            => s_logisimBus29(3),
                 d_func5            => s_logisimBus301(3),
                 d_func6            => s_logisimBus1(3),
                 d_func7            => s_logisimBus94(3),
                 e_display          => s_logisimNet427,
                 e_func0            => s_logisimBus169(4),
                 e_func1            => s_logisimBus169(4),
                 e_func2            => s_logisimBus33(4),
                 e_func3            => s_logisimBus281(4),
                 e_func4            => s_logisimBus29(4),
                 e_func5            => s_logisimBus301(4),
                 e_func6            => s_logisimBus1(4),
                 e_func7            => s_logisimBus94(4),
                 f_display          => s_logisimNet428,
                 f_func0            => s_logisimBus169(5),
                 f_func1            => s_logisimBus169(5),
                 f_func2            => s_logisimBus33(5),
                 f_func3            => s_logisimBus281(5),
                 f_func4            => s_logisimBus29(5),
                 f_func5            => s_logisimBus301(5),
                 f_func6            => s_logisimBus1(5),
                 f_func7            => s_logisimBus94(5),
                 g_display          => s_logisimNet429,
                 g_func0            => s_logisimBus169(6),
                 g_func1            => s_logisimBus169(6),
                 g_func2            => s_logisimBus33(6),
                 g_func3            => s_logisimBus281(6),
                 g_func4            => s_logisimBus29(6),
                 g_func5            => s_logisimBus301(6),
                 g_func6            => s_logisimBus1(6),
                 g_func7            => s_logisimBus94(6),
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

   bouncing_filter_10 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet293,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet121,
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

   bouncing_filter_1 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet160,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet353,
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

   bouncing_filter_9 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet246,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet330,
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

   bouncing_filter_8 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet97,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet191,
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

   bouncing_filter_2 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet338,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet274,
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

   bouncing_filter_5 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet430,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet314,
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

   toggle_button_1 : toggle_button
      PORT MAP ( Buttonn            => s_logisimNet236,
                 CLK                => s_logisimNet435,
                 Reset              => s_logisimNet436,
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
                 outputtt           => s_logisimNet349 );

   bouncing_filter_4 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet320,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet235,
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

   Decoder_Rotation_1 : Decoder_Rotation
      PORT MAP ( CCW                => s_logisimNet431,
                 CHA                => s_logisimNet341,
                 CHB                => s_logisimNet105,
                 CLK                => s_logisimNet435,
                 CW                 => s_logisimNet432,
                 Reset              => s_logisimNet436,
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

   bouncing_filter_6 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet23,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet352,
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

   bouncing_filter_7 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet312,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet329,
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

   bouncing_filter_3 : bouncing_filter
      PORT MAP ( CLK                => s_logisimNet435,
                 INPUT_SIGNAL       => s_logisimNet433,
                 RESET              => s_logisimNet436,
                 SIGNAL_OUT         => s_logisimNet282,
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

   display5 : display_selector
      PORT MAP ( D0                 => s_logisimBus156(0),
                 D1                 => s_logisimBus156(1),
                 D2                 => s_logisimBus156(2),
                 a_display          => s_logisimNet318,
                 a_func0            => s_logisimBus8(0),
                 a_func1            => s_logisimBus8(0),
                 a_func2            => s_logisimBus65(0),
                 a_func3            => s_logisimBus36(0),
                 a_func4            => s_logisimBus0(0),
                 a_func5            => s_logisimBus15(0),
                 a_func6            => s_logisimBus102(0),
                 a_func7            => s_logisimBus13(0),
                 b_display          => s_logisimNet336,
                 b_func0            => s_logisimBus8(1),
                 b_func1            => s_logisimBus8(1),
                 b_func2            => s_logisimBus65(1),
                 b_func3            => s_logisimBus36(1),
                 b_func4            => s_logisimBus0(1),
                 b_func5            => s_logisimBus15(1),
                 b_func6            => s_logisimBus102(1),
                 b_func7            => s_logisimBus13(1),
                 c_display          => s_logisimNet325,
                 c_func0            => s_logisimBus8(2),
                 c_func1            => s_logisimBus8(2),
                 c_func2            => s_logisimBus65(2),
                 c_func3            => s_logisimBus36(2),
                 c_func4            => s_logisimBus0(2),
                 c_func5            => s_logisimBus15(2),
                 c_func6            => s_logisimBus102(2),
                 c_func7            => s_logisimBus13(2),
                 d_display          => s_logisimNet230,
                 d_func0            => s_logisimBus8(3),
                 d_func1            => s_logisimBus8(3),
                 d_func2            => s_logisimBus65(3),
                 d_func3            => s_logisimBus36(3),
                 d_func4            => s_logisimBus0(3),
                 d_func5            => s_logisimBus15(3),
                 d_func6            => s_logisimBus102(3),
                 d_func7            => s_logisimBus13(3),
                 e_display          => s_logisimNet350,
                 e_func0            => s_logisimBus8(4),
                 e_func1            => s_logisimBus8(4),
                 e_func2            => s_logisimBus65(4),
                 e_func3            => s_logisimBus36(4),
                 e_func4            => s_logisimBus0(4),
                 e_func5            => s_logisimBus15(4),
                 e_func6            => s_logisimBus102(4),
                 e_func7            => s_logisimBus13(4),
                 f_display          => s_logisimNet267,
                 f_func0            => s_logisimBus8(5),
                 f_func1            => s_logisimBus8(5),
                 f_func2            => s_logisimBus65(5),
                 f_func3            => s_logisimBus36(5),
                 f_func4            => s_logisimBus0(5),
                 f_func5            => s_logisimBus15(5),
                 f_func6            => s_logisimBus102(5),
                 f_func7            => s_logisimBus13(5),
                 g_display          => s_logisimNet302,
                 g_func0            => s_logisimBus8(6),
                 g_func1            => s_logisimBus8(6),
                 g_func2            => s_logisimBus65(6),
                 g_func3            => s_logisimBus36(6),
                 g_func4            => s_logisimBus0(6),
                 g_func5            => s_logisimBus15(6),
                 g_func6            => s_logisimBus102(6),
                 g_func7            => s_logisimBus13(6),
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

   state_selector_FSM_1 : state_selector_FSM
      PORT MAP ( CLk                => s_logisimNet435,
                 D0                 => s_logisimBus156(0),
                 D1                 => s_logisimBus156(1),
                 D2                 => s_logisimBus156(2),
                 Reset              => s_logisimNet436,
                 inputtttttttttt    => s_logisimNet349,
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
