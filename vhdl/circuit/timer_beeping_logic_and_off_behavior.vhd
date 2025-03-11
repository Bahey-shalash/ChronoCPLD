--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : timer_beeping_logic_and_off                                  ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF timer_beeping_logic_and_off IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT NOR_GATE_21_INPUTS
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
                input3  : IN  std_logic;
                input4  : IN  std_logic;
                input5  : IN  std_logic;
                input6  : IN  std_logic;
                input7  : IN  std_logic;
                input8  : IN  std_logic;
                input9  : IN  std_logic;
                result  : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_21_INPUTS
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
                input3  : IN  std_logic;
                input4  : IN  std_logic;
                input5  : IN  std_logic;
                input6  : IN  std_logic;
                input7  : IN  std_logic;
                input8  : IN  std_logic;
                input9  : IN  std_logic;
                result  : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus10 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus19 : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimBus20 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus9  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
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
   SIGNAL s_logisimNet67 : std_logic;
   SIGNAL s_logisimNet68 : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus10(3 DOWNTO 0) <= MINS_MSD;
   s_logisimBus19(4 DOWNTO 0) <= HOURS;
   s_logisimBus20(3 DOWNTO 0) <= SECONDSMSD;
   s_logisimBus5(3 DOWNTO 0)  <= seconds_LSD;
   s_logisimBus9(3 DOWNTO 0)  <= MINS_LSD;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   beep    <= s_logisimNet32;
   offffff <= s_logisimNet60;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimNet30 <=  NOT s_logisimBus20(1);

   -- NOT Gate
   s_logisimNet1 <=  NOT s_logisimBus9(0);

   -- NOT Gate
   s_logisimNet4 <=  NOT s_logisimBus9(3);

   -- NOT Gate
   s_logisimNet22 <=  NOT s_logisimBus10(1);

   -- NOT Gate
   s_logisimNet25 <=  NOT s_logisimBus10(3);

   -- NOT Gate
   s_logisimNet54 <=  NOT s_logisimBus5(0);

   -- NOT Gate
   s_logisimNet0 <=  NOT s_logisimBus20(0);

   -- NOT Gate
   s_logisimNet2 <=  NOT s_logisimBus9(1);

   -- NOT Gate
   s_logisimNet3 <=  NOT s_logisimBus9(2);

   -- NOT Gate
   s_logisimNet37 <=  NOT s_logisimBus20(3);

   -- NOT Gate
   s_logisimNet11 <=  NOT s_logisimBus10(0);

   -- NOT Gate
   s_logisimNet6 <=  NOT s_logisimBus10(2);

   -- NOT Gate
   s_logisimNet49 <=  NOT s_logisimBus20(2);

   -- NOT Gate
   s_logisimNet15 <=  NOT s_logisimBus19(2);

   -- NOT Gate
   s_logisimNet8 <=  NOT s_logisimBus5(1);

   -- NOT Gate
   s_logisimNet31 <=  NOT s_logisimBus5(2);

   -- NOT Gate
   s_logisimNet28 <=  NOT s_logisimBus19(3);

   -- NOT Gate
   s_logisimNet29 <=  NOT s_logisimBus19(4);

   -- NOT Gate
   s_logisimNet26 <=  NOT s_logisimBus19(0);

   -- NOT Gate
   s_logisimNet27 <=  NOT s_logisimBus19(1);

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : NOR_GATE_21_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"00000" )
      PORT MAP ( input1  => s_logisimBus5(0),
                 input10 => s_logisimBus9(1),
                 input11 => s_logisimBus9(2),
                 input12 => s_logisimBus9(3),
                 input13 => s_logisimBus10(0),
                 input14 => s_logisimBus10(1),
                 input15 => s_logisimBus10(2),
                 input16 => s_logisimBus10(3),
                 input17 => s_logisimBus19(0),
                 input18 => s_logisimBus19(1),
                 input19 => s_logisimBus19(2),
                 input2  => s_logisimBus5(1),
                 input20 => s_logisimBus19(3),
                 input21 => s_logisimBus19(4),
                 input3  => s_logisimBus5(2),
                 input4  => s_logisimBus5(3),
                 input5  => s_logisimBus20(0),
                 input6  => s_logisimBus20(1),
                 input7  => s_logisimBus20(2),
                 input8  => s_logisimBus20(3),
                 input9  => s_logisimBus9(0),
                 result  => s_logisimNet32 );

   GATES_2 : AND_GATE_21_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"00000" )
      PORT MAP ( input1  => s_logisimNet54,
                 input10 => s_logisimNet2,
                 input11 => s_logisimNet3,
                 input12 => s_logisimNet4,
                 input13 => s_logisimNet11,
                 input14 => s_logisimNet22,
                 input15 => s_logisimNet6,
                 input16 => s_logisimNet25,
                 input17 => s_logisimNet26,
                 input18 => s_logisimNet27,
                 input19 => s_logisimNet15,
                 input2  => s_logisimNet8,
                 input20 => s_logisimNet28,
                 input21 => s_logisimNet29,
                 input3  => s_logisimNet31,
                 input4  => s_logisimBus5(3),
                 input5  => s_logisimNet0,
                 input6  => s_logisimNet30,
                 input7  => s_logisimNet49,
                 input8  => s_logisimNet37,
                 input9  => s_logisimNet1,
                 result  => s_logisimNet60 );


END platformIndependent;
