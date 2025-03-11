--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : transition_logic24h_increment                                ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF transition_logic24h_increment IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

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

      COMPONENT AND_GATE_5_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_6_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
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

      COMPONENT OR_GATE_5_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
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
   s_logisimNet1  <= C3;
   s_logisimNet17 <= C2;
   s_logisimNet2  <= Enable;
   s_logisimNet4  <= C1;
   s_logisimNet6  <= C0;
   s_logisimNet7  <= C4;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   Cout <= s_logisimNet9;
   D0   <= s_logisimNet28;
   D1   <= s_logisimNet14;
   D2   <= s_logisimNet19;
   D3   <= s_logisimNet5;
   D4   <= s_logisimNet18;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimNet24 <=  NOT s_logisimNet4;

   -- NOT Gate
   s_logisimNet27 <=  NOT s_logisimNet17;

   -- NOT Gate
   s_logisimNet21 <=  NOT s_logisimNet1;

   -- NOT Gate
   s_logisimNet3 <=  NOT s_logisimNet7;

   -- NOT Gate
   s_logisimNet16 <=  NOT s_logisimNet2;

   -- NOT Gate
   s_logisimNet10 <=  NOT s_logisimNet6;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet17,
                 input2 => s_logisimNet16,
                 result => s_logisimNet13 );

   GATES_2 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet21,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet2,
                 result => s_logisimNet12 );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimNet3,
                 result => s_logisimNet22 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimNet16,
                 result => s_logisimNet11 );

   GATES_5 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet2,
                 result => s_logisimNet26 );

   GATES_6 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet16,
                 result => s_logisimNet29 );

   GATES_7 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet17,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet7,
                 input5 => s_logisimNet2,
                 result => s_logisimNet9 );

   GATES_8 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet27,
                 result => s_logisimNet23 );

   GATES_9 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet21,
                 result => s_logisimNet15 );

   GATES_10 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet3,
                 result => s_logisimNet20 );

   GATES_11 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet16,
                 result => s_logisimNet31 );

   GATES_12 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet17,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet7,
                 input5 => s_logisimNet2,
                 result => s_logisimNet35 );

   GATES_13 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet24,
                 input3 => s_logisimNet17,
                 input4 => s_logisimNet1,
                 input5 => s_logisimNet7,
                 input6 => s_logisimNet2,
                 result => s_logisimNet32 );

   GATES_14 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet27,
                 result => s_logisimNet25 );

   GATES_15 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet21,
                 result => s_logisimNet33 );

   GATES_16 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet3,
                 result => s_logisimNet36 );

   GATES_17 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet16,
                 result => s_logisimNet8 );

   GATES_18 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimNet1,
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet2,
                 result => s_logisimNet30 );

   GATES_19 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet17,
                 input2 => s_logisimNet21,
                 result => s_logisimNet0 );

   GATES_20 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet17,
                 input2 => s_logisimNet3,
                 result => s_logisimNet34 );

   GATES_21 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet22,
                 input3 => s_logisimNet11,
                 result => s_logisimNet5 );

   GATES_22 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet26,
                 input2 => s_logisimNet29,
                 result => s_logisimNet18 );

   GATES_23 : OR_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet15,
                 input3 => s_logisimNet20,
                 input4 => s_logisimNet31,
                 input5 => s_logisimNet35,
                 result => s_logisimNet28 );

   GATES_24 : OR_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet32,
                 input2 => s_logisimNet25,
                 input3 => s_logisimNet33,
                 input4 => s_logisimNet36,
                 input5 => s_logisimNet8,
                 result => s_logisimNet14 );

   GATES_25 : OR_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet30,
                 input2 => s_logisimNet0,
                 input3 => s_logisimNet34,
                 input4 => s_logisimNet13,
                 result => s_logisimNet19 );


END platformIndependent;
