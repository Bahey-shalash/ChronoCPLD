--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : state_selector_Decder                                        ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF state_selector_Decder IS 

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
   s_logisimNet3 <= D1;
   s_logisimNet5 <= D2;
   s_logisimNet6 <= D0;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   State1       <= s_logisimNet11;
   State2       <= s_logisimNet9;
   State3       <= s_logisimNet1;
   State4       <= s_logisimNet0;
   State5       <= s_logisimNet7;
   State7       <= s_logisimNet12;
   Time_setting <= s_logisimNet10;
   state6       <= s_logisimNet13;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimNet4 <=  NOT s_logisimNet3;

   -- NOT Gate
   s_logisimNet8 <=  NOT s_logisimNet6;

   -- NOT Gate
   s_logisimNet2 <=  NOT s_logisimNet5;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet8,
                 result => s_logisimNet10 );

   GATES_2 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet6,
                 result => s_logisimNet11 );

   GATES_3 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet3,
                 input3 => s_logisimNet8,
                 result => s_logisimNet9 );

   GATES_4 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet3,
                 input3 => s_logisimNet6,
                 result => s_logisimNet1 );

   GATES_5 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet8,
                 result => s_logisimNet0 );

   GATES_6 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet6,
                 result => s_logisimNet7 );

   GATES_7 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet3,
                 input3 => s_logisimNet8,
                 result => s_logisimNet13 );

   GATES_8 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet3,
                 input3 => s_logisimNet6,
                 result => s_logisimNet12 );


END platformIndependent;
