--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : Demultiplexer_2                                              ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Demultiplexer_2 IS 

BEGIN

   demuxOut_0  <= demuxIn WHEN sel = '0' AND
                               enable = '1' ELSE '0';

   demuxOut_1  <= demuxIn WHEN sel = '1' AND
                               enable = '1' ELSE '0';
END platformIndependent;
