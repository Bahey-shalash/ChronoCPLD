--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : Transition_logic_state_selector                              ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Transition_logic_state_selector IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
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
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
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
   s_logisimNet0  <= C1;
   s_logisimNet15 <= C2;
   s_logisimNet3  <= C0;
   s_logisimNet6  <= Button;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   D0 <= s_logisimNet6;
   D1 <= s_logisimNet7;
   D2 <= s_logisimNet8;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimNet1 <=  NOT s_logisimNet0;

   -- NOT Gate
   s_logisimNet2 <=  NOT s_logisimNet3;

   -- NOT Gate
   s_logisimNet4 <=  NOT s_logisimNet6;

   -- NOT Gate
   s_logisimNet9 <=  NOT s_logisimNet15;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet9,
                 input2 => s_logisimNet0,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet4,
                 result => s_logisimNet10 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet15,
                 input2 => s_logisimNet1,
                 result => s_logisimNet5 );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet15,
                 input2 => s_logisimNet2,
                 result => s_logisimNet12 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet15,
                 input2 => s_logisimNet6,
                 result => s_logisimNet11 );

   GATES_5 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimNet3,
                 input3 => s_logisimNet4,
                 result => s_logisimNet13 );

   GATES_6 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet0,
                 input2 => s_logisimNet2,
                 result => s_logisimNet16 );

   GATES_7 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet0,
                 input2 => s_logisimNet6,
                 result => s_logisimNet14 );

   GATES_8 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet13,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet14,
                 result => s_logisimNet7 );

   GATES_9 : OR_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet12,
                 input4 => s_logisimNet11,
                 result => s_logisimNet8 );


END platformIndependent;
