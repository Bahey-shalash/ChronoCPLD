--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : alarm_setting                                                ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF alarm_setting IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_5_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
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
   s_logisimNet0 <= START_STOP_ALARM;
   s_logisimNet3 <= ONNNN;
   s_logisimNet4 <= State_ALARM;
   s_logisimNet5 <= CW;
   s_logisimNet6 <= CCW;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   Enable    <= s_logisimNet10;
   increment <= s_logisimNet7;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimNet2 <=  NOT s_logisimNet5;

   -- NOT Gate
   s_logisimNet7 <=  NOT s_logisimNet6;

   -- NOT Gate
   s_logisimNet1 <=  NOT s_logisimNet0;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet2,
                 input5 => s_logisimNet6,
                 result => s_logisimNet9 );

   GATES_2 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet1,
                 input4 => s_logisimNet5,
                 input5 => s_logisimNet7,
                 result => s_logisimNet8 );

   GATES_3 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet9,
                 input2 => s_logisimNet8,
                 result => s_logisimNet10 );


END platformIndependent;
