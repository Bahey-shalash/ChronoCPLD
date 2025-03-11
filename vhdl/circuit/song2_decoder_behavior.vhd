--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : song2_decoder                                                ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF song2_decoder IS 

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

      COMPONENT OR_GATE_7_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
                input7 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_8_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
                input7 : IN  std_logic;
                input8 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_9_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
                input7 : IN  std_logic;
                input8 : IN  std_logic;
                input9 : IN  std_logic;
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
   SIGNAL s_logisimNet48 : std_logic;
   SIGNAL s_logisimNet49 : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet16 <= D3;
   s_logisimNet3  <= D2;
   s_logisimNet4  <= D1;
   s_logisimNet6  <= D5;
   s_logisimNet7  <= D4;
   s_logisimNet8  <= D0;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   B4      <= s_logisimNet41;
   Db5     <= s_logisimNet45;
   E5      <= s_logisimNet27;
   Fsharp5 <= s_logisimNet19;
   G4      <= s_logisimNet38;
   re5     <= s_logisimNet5;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimNet2 <=  NOT s_logisimNet7;

   -- NOT Gate
   s_logisimNet13 <=  NOT s_logisimNet16;

   -- NOT Gate
   s_logisimNet10 <=  NOT s_logisimNet3;

   -- NOT Gate
   s_logisimNet22 <=  NOT s_logisimNet4;

   -- NOT Gate
   s_logisimNet11 <=  NOT s_logisimNet8;

   -- NOT Gate
   s_logisimNet12 <=  NOT s_logisimNet6;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet10,
                 input5 => s_logisimNet4,
                 input6 => s_logisimNet11,
                 result => s_logisimNet21 );

   GATES_2 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet13,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet22,
                 input5 => s_logisimNet11,
                 result => s_logisimNet49 );

   GATES_3 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet4,
                 result => s_logisimNet9 );

   GATES_4 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet13,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet4,
                 input5 => s_logisimNet8,
                 result => s_logisimNet42 );

   GATES_5 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet10,
                 input4 => s_logisimNet22,
                 result => s_logisimNet43 );

   GATES_6 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet10,
                 input5 => s_logisimNet4,
                 input6 => s_logisimNet8,
                 result => s_logisimNet47 );

   GATES_7 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet3,
                 input5 => s_logisimNet22,
                 input6 => s_logisimNet8,
                 result => s_logisimNet36 );

   GATES_8 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet22,
                 input5 => s_logisimNet8,
                 result => s_logisimNet25 );

   GATES_9 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet10,
                 input4 => s_logisimNet4,
                 input5 => s_logisimNet11,
                 result => s_logisimNet32 );

   GATES_10 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet10,
                 input5 => s_logisimNet4,
                 input6 => s_logisimNet8,
                 result => s_logisimNet26 );

   GATES_11 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet3,
                 input5 => s_logisimNet22,
                 input6 => s_logisimNet11,
                 result => s_logisimNet24 );

   GATES_12 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet8,
                 result => s_logisimNet1 );

   GATES_13 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet13,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet4,
                 input5 => s_logisimNet11,
                 result => s_logisimNet29 );

   GATES_14 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet22,
                 input4 => s_logisimNet8,
                 result => s_logisimNet35 );

   GATES_15 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet16,
                 input4 => s_logisimNet4,
                 input5 => s_logisimNet8,
                 result => s_logisimNet15 );

   GATES_16 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet22,
                 input5 => s_logisimNet11,
                 result => s_logisimNet39 );

   GATES_17 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet3,
                 input5 => s_logisimNet22,
                 input6 => s_logisimNet8,
                 result => s_logisimNet33 );

   GATES_18 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet3,
                 input5 => s_logisimNet4,
                 input6 => s_logisimNet8,
                 result => s_logisimNet48 );

   GATES_19 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet10,
                 input4 => s_logisimNet4,
                 input5 => s_logisimNet8,
                 result => s_logisimNet37 );

   GATES_20 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet22,
                 input5 => s_logisimNet11,
                 result => s_logisimNet31 );

   GATES_21 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet3,
                 input5 => s_logisimNet22,
                 input6 => s_logisimNet8,
                 result => s_logisimNet34 );

   GATES_22 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet13,
                 input4 => s_logisimNet10,
                 result => s_logisimNet0 );

   GATES_23 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet16,
                 input4 => s_logisimNet22,
                 result => s_logisimNet46 );

   GATES_24 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet13,
                 input3 => s_logisimNet10,
                 input4 => s_logisimNet22,
                 result => s_logisimNet20 );

   GATES_25 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet4,
                 result => s_logisimNet44 );

   GATES_26 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet13,
                 input3 => s_logisimNet10,
                 input4 => s_logisimNet22,
                 result => s_logisimNet40 );

   GATES_27 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet2,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet4,
                 result => s_logisimNet18 );

   GATES_28 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet4,
                 result => s_logisimNet17 );

   GATES_29 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet16,
                 input3 => s_logisimNet11,
                 result => s_logisimNet23 );

   GATES_30 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet10,
                 input3 => s_logisimNet22,
                 input4 => s_logisimNet11,
                 result => s_logisimNet28 );

   GATES_31 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet10,
                 input4 => s_logisimNet8,
                 result => s_logisimNet30 );

   GATES_32 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet12,
                 input2 => s_logisimNet7,
                 input3 => s_logisimNet10,
                 input4 => s_logisimNet4,
                 input5 => s_logisimNet11,
                 result => s_logisimNet14 );

   GATES_33 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet47,
                 input2 => s_logisimNet36,
                 input3 => s_logisimNet25,
                 result => s_logisimNet45 );

   GATES_34 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet33,
                 input2 => s_logisimNet48,
                 input3 => s_logisimNet37,
                 result => s_logisimNet27 );

   GATES_35 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet31,
                 input2 => s_logisimNet34,
                 result => s_logisimNet38 );

   GATES_36 : OR_GATE_7_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"0" )
      PORT MAP ( input1 => s_logisimNet30,
                 input2 => s_logisimNet14,
                 input3 => s_logisimNet21,
                 input4 => s_logisimNet49,
                 input5 => s_logisimNet9,
                 input6 => s_logisimNet42,
                 input7 => s_logisimNet43,
                 result => s_logisimNet41 );

   GATES_37 : OR_GATE_8_INPUTS
      GENERIC MAP ( BubblesMask => X"00" )
      PORT MAP ( input1 => s_logisimNet32,
                 input2 => s_logisimNet26,
                 input3 => s_logisimNet24,
                 input4 => s_logisimNet1,
                 input5 => s_logisimNet29,
                 input6 => s_logisimNet35,
                 input7 => s_logisimNet15,
                 input8 => s_logisimNet39,
                 result => s_logisimNet5 );

   GATES_38 : OR_GATE_9_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"00" )
      PORT MAP ( input1 => s_logisimNet0,
                 input2 => s_logisimNet46,
                 input3 => s_logisimNet20,
                 input4 => s_logisimNet44,
                 input5 => s_logisimNet40,
                 input6 => s_logisimNet18,
                 input7 => s_logisimNet17,
                 input8 => s_logisimNet23,
                 input9 => s_logisimNet28,
                 result => s_logisimNet19 );


END platformIndependent;
