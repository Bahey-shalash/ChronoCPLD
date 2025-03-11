--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : timer_small_logic                                            ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF timer_small_logic IS 

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

      COMPONENT OR_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
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
   SIGNAL s_logisimNet2  : std_logic;
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
   s_logisimNet0 <= CCw;
   s_logisimNet1 <= start_stop;
   s_logisimNet3 <= ONNNN;
   s_logisimNet4 <= State3;
   s_logisimNet5 <= Cw;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   Enable    <= s_logisimNet2;
   increment <= s_logisimNet12;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimNet11 <=  NOT s_logisimNet1;

   -- NOT Gate
   s_logisimNet6 <=  NOT s_logisimNet0;

   -- NOT Gate
   s_logisimNet10 <=  NOT s_logisimNet3;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet0,
                 result => s_logisimNet7 );

   GATES_2 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet5,
                 result => s_logisimNet13 );

   GATES_3 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet1,
                 result => s_logisimNet8 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet11,
                 input2 => s_logisimNet6,
                 result => s_logisimNet9 );

   GATES_5 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet13,
                 input3 => s_logisimNet8,
                 result => s_logisimNet2 );

   GATES_6 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet9,
                 result => s_logisimNet12 );


END platformIndependent;
