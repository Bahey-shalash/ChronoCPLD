--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : song1_64k_frequence                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF song1_64k_frequence IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
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
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet19 <= logisimClockTree6(0);
   s_logisimNet20 <= logisimClockTree9(0);
   s_logisimNet21 <= logisimClockTree3(0);
   s_logisimNet22 <= logisimClockTree5(0);
   s_logisimNet23 <= logisimClockTree10(0);
   s_logisimNet24 <= logisimClockTree11(0);
   s_logisimNet25 <= logisimClockTree8(0);
   s_logisimNet26 <= logisimClockTree12(0);
   s_logisimNet27 <= logisimClockTree13(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet0 <= E5;
   s_logisimNet2 <= Dsharp5;
   s_logisimNet3 <= B4;
   s_logisimNet4 <= re5;
   s_logisimNet5 <= do5;
   s_logisimNet6 <= A4;
   s_logisimNet7 <= do4;
   s_logisimNet8 <= E4;
   s_logisimNet9 <= Gsharp4;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   song1_note <= s_logisimNet1;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet9,
                 input2 => s_logisimNet25,
                 result => s_logisimNet16 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet0,
                 input2 => s_logisimNet19,
                 result => s_logisimNet15 );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet20,
                 result => s_logisimNet17 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet21,
                 result => s_logisimNet11 );

   GATES_5 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet22,
                 result => s_logisimNet13 );

   GATES_6 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet23,
                 result => s_logisimNet10 );

   GATES_7 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet24,
                 result => s_logisimNet14 );

   GATES_8 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet26,
                 result => s_logisimNet12 );

   GATES_9 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet8,
                 input2 => s_logisimNet27,
                 result => s_logisimNet18 );

   GATES_10 : OR_GATE_9_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"00" )
      PORT MAP ( input1 => s_logisimNet15,
                 input2 => s_logisimNet17,
                 input3 => s_logisimNet11,
                 input4 => s_logisimNet13,
                 input5 => s_logisimNet10,
                 input6 => s_logisimNet14,
                 input7 => s_logisimNet12,
                 input8 => s_logisimNet18,
                 input9 => s_logisimNet16,
                 result => s_logisimNet1 );


END platformIndependent;
