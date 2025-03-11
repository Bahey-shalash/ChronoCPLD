--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : song1_decoder                                                ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF song1_decoder IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

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

      COMPONENT AND_GATE_5_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
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

      COMPONENT AND_GATE_3_INPUTS
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

      COMPONENT OR_GATE_5_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
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
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet0  <= D0;
   s_logisimNet2  <= D1;
   s_logisimNet23 <= D5;
   s_logisimNet4  <= D4;
   s_logisimNet5  <= D3;
   s_logisimNet8  <= D2;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   A4      <= s_logisimNet28;
   B4      <= s_logisimNet14;
   Dsharp5 <= s_logisimNet39;
   E4      <= s_logisimNet12;
   E5      <= s_logisimNet26;
   Gsharp4 <= s_logisimNet9;
   do4     <= s_logisimNet10;
   do5     <= s_logisimNet38;
   re5     <= s_logisimNet19;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimNet6 <=  NOT s_logisimNet4;

   -- NOT Gate
   s_logisimNet20 <=  NOT s_logisimNet5;

   -- NOT Gate
   s_logisimNet1 <=  NOT s_logisimNet8;

   -- NOT Gate
   s_logisimNet7 <=  NOT s_logisimNet2;

   -- NOT Gate
   s_logisimNet3 <=  NOT s_logisimNet0;

   -- NOT Gate
   s_logisimNet21 <=  NOT s_logisimNet23;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet21,
                 input2 => s_logisimNet6,
                 input3 => s_logisimNet20,
                 input4 => s_logisimNet8,
                 input5 => s_logisimNet2,
                 input6 => s_logisimNet3,
                 result => s_logisimNet35 );

   GATES_2 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet2,
                 input5 => s_logisimNet3,
                 result => s_logisimNet40 );

   GATES_3 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet20,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet2,
                 result => s_logisimNet27 );

   GATES_4 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet8,
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet3,
                 result => s_logisimNet13 );

   GATES_5 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet21,
                 input2 => s_logisimNet6,
                 input3 => s_logisimNet20,
                 input4 => s_logisimNet8,
                 input5 => s_logisimNet2,
                 input6 => s_logisimNet0,
                 result => s_logisimNet25 );

   GATES_6 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet1,
                 input3 => s_logisimNet2,
                 input4 => s_logisimNet0,
                 result => s_logisimNet15 );

   GATES_7 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet1,
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet3,
                 result => s_logisimNet31 );

   GATES_8 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet8,
                 input3 => s_logisimNet2,
                 result => s_logisimNet17 );

   GATES_9 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet7,
                 result => s_logisimNet22 );

   GATES_10 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet8,
                 input4 => s_logisimNet7,
                 result => s_logisimNet37 );

   GATES_11 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet3,
                 result => s_logisimNet43 );

   GATES_12 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet2,
                 input5 => s_logisimNet3,
                 result => s_logisimNet11 );

   GATES_13 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet8,
                 input4 => s_logisimNet2,
                 input5 => s_logisimNet3,
                 result => s_logisimNet42 );

   GATES_14 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet1,
                 input3 => s_logisimNet2,
                 input4 => s_logisimNet0,
                 result => s_logisimNet29 );

   GATES_15 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet2,
                 input4 => s_logisimNet0,
                 result => s_logisimNet46 );

   GATES_16 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet8,
                 input3 => s_logisimNet2,
                 input4 => s_logisimNet0,
                 result => s_logisimNet47 );

   GATES_17 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet20,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet7,
                 input5 => s_logisimNet3,
                 result => s_logisimNet9 );

   GATES_18 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet20,
                 input3 => s_logisimNet8,
                 input4 => s_logisimNet3,
                 result => s_logisimNet34 );

   GATES_19 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet7,
                 input5 => s_logisimNet3,
                 result => s_logisimNet24 );

   GATES_20 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet21,
                 input2 => s_logisimNet6,
                 input3 => s_logisimNet20,
                 input4 => s_logisimNet1,
                 input5 => s_logisimNet3,
                 result => s_logisimNet41 );

   GATES_21 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet21,
                 input2 => s_logisimNet6,
                 input3 => s_logisimNet20,
                 input4 => s_logisimNet7,
                 input5 => s_logisimNet3,
                 result => s_logisimNet45 );

   GATES_22 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet21,
                 input2 => s_logisimNet6,
                 input3 => s_logisimNet20,
                 input4 => s_logisimNet1,
                 input5 => s_logisimNet0,
                 result => s_logisimNet33 );

   GATES_23 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet20,
                 input3 => s_logisimNet8,
                 input4 => s_logisimNet0,
                 result => s_logisimNet18 );

   GATES_24 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet1,
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet0,
                 result => s_logisimNet16 );

   GATES_25 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet0,
                 result => s_logisimNet30 );

   GATES_26 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet1,
                 input3 => s_logisimNet2,
                 input4 => s_logisimNet3,
                 result => s_logisimNet44 );

   GATES_27 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet8,
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet0,
                 result => s_logisimNet32 );

   GATES_28 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet8,
                 input4 => s_logisimNet2,
                 input5 => s_logisimNet3,
                 result => s_logisimNet36 );

   GATES_29 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet35,
                 input2 => s_logisimNet40,
                 result => s_logisimNet19 );

   GATES_30 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet11,
                 input2 => s_logisimNet42,
                 result => s_logisimNet10 );

   GATES_31 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet29,
                 input2 => s_logisimNet46,
                 input3 => s_logisimNet47,
                 result => s_logisimNet12 );

   GATES_32 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet33,
                 input2 => s_logisimNet18,
                 result => s_logisimNet39 );

   GATES_33 : OR_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimNet13,
                 input3 => s_logisimNet25,
                 input4 => s_logisimNet15,
                 result => s_logisimNet38 );

   GATES_34 : OR_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet31,
                 input2 => s_logisimNet17,
                 input3 => s_logisimNet22,
                 input4 => s_logisimNet37,
                 input5 => s_logisimNet43,
                 result => s_logisimNet28 );

   GATES_35 : OR_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet34,
                 input2 => s_logisimNet24,
                 input3 => s_logisimNet41,
                 input4 => s_logisimNet45,
                 result => s_logisimNet26 );

   GATES_36 : OR_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet16,
                 input2 => s_logisimNet30,
                 input3 => s_logisimNet44,
                 input4 => s_logisimNet32,
                 input5 => s_logisimNet36,
                 result => s_logisimNet14 );


END platformIndependent;
