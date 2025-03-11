--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : song2_64k_frequence                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF song2_64k_frequence IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_6_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
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
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet13 <= logisimClockTree2(0);
   s_logisimNet14 <= logisimClockTree3(0);
   s_logisimNet15 <= logisimClockTree4(0);
   s_logisimNet16 <= logisimClockTree5(0);
   s_logisimNet17 <= logisimClockTree6(0);
   s_logisimNet18 <= logisimClockTree7(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet0 <= Fsharp5;
   s_logisimNet2 <= B4;
   s_logisimNet3 <= Db5;
   s_logisimNet4 <= re5;
   s_logisimNet5 <= E5;
   s_logisimNet6 <= G4;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   song2_note <= s_logisimNet1;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet0,
                 input2 => s_logisimNet13,
                 result => s_logisimNet11 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet2,
                 input2 => s_logisimNet14,
                 result => s_logisimNet9 );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet15,
                 result => s_logisimNet7 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet4,
                 input2 => s_logisimNet16,
                 result => s_logisimNet8 );

   GATES_5 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet5,
                 input2 => s_logisimNet17,
                 result => s_logisimNet10 );

   GATES_6 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet6,
                 input2 => s_logisimNet18,
                 result => s_logisimNet12 );

   GATES_7 : OR_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet11,
                 input2 => s_logisimNet9,
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet8,
                 input5 => s_logisimNet10,
                 input6 => s_logisimNet12,
                 result => s_logisimNet1 );


END platformIndependent;
