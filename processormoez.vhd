----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:28:27 05/18/2022 
-- Design Name: 
-- Module Name:    processormoez - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processormoez is
	Port(
	clock:in STD_LOGIC);
end processormoez;

architecture Behavioral of processormoez is
--contol unit
component ControlUnit is
    Port ( opin : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           AluOp : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

--AlU
component ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           op : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           res : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--mux32bit
component Mux32Bit is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Z : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC);
end component;

--PC
component PC is
   Port ( inputt : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--adder4
component adder4 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--adder1
component adderrrrrr is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--alucontrol
component alucontrol is
    Port ( aluin : in  STD_LOGIC_VECTOR (1 downto 0);
           funin : in  STD_LOGIC_VECTOR (5 downto 0);
           op : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

--instructionmem
component instructionmem is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--memunit
component mem_unit is
    Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           writedata : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : in  STD_LOGIC;
           memread : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           readdata : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--mux4to1
component mux4_1 is
   Port (  I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end component;

--mux5
component mux5 is
    Port ( in1 : in  STD_LOGIC_VECTOR (4 downto 0);
           in2 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

--registerrrr
component reggg is
Port ( 	  readreg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           readreg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           writedata : in  STD_LOGIC_VECTOR (31 downto 0);
           readdata1 : out  STD_LOGIC_VECTOR (31 downto 0);
           readdata2 : out  STD_LOGIC_VECTOR (31 downto 0);
           writereg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           regwrite : in  STD_LOGIC;
			  clk : in STD_LOGIC);
end component;

--shiftleft
component shiftleft is
    Port ( inputt : in  STD_LOGIC_VECTOR (31 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--signextend
component signextend is
 Port (    inputt : in  STD_LOGIC_VECTOR (15 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--signals--

--control unit signals
signal regdst_mux5 : STD_LOGIC;
signal branch_and: STD_LOGIC;
signal memread_mem: STD_LOGIC;
signal memtoreg_mux32: STD_LOGIC;
signal ALUop_alucontrol : STD_LOGIC_VECTOR(1 downto 0);
signal memwrite_mem: STD_LOGIC;
signal Alusrc_mux32bit: STD_LOGIC;
signal regwrite_registerr: STD_LOGIC;
signal INSTUCT_MEM_OUT: STD_LOGIC_VECTOR(31 downto 0);
--register signals 
signal MUX32BIT_out_writedata : STD_LOGIC_VECTOR(31 downto 0);
signal REG_readdata1_A : STD_LOGIC_VECTOR(31 downto 0);
signal REG_readdata1_B : STD_LOGIC_VECTOR(31 downto 0);
--mux5out signals
signal  mux5out_writeregister : STD_LOGIC_VECTOR(4 downto 0);
--sign extend signals
signal SIGNEXT_OUT_sl2_mux32bit : STD_LOGIC_VECTOR(31 downto 0);
--mux 32 bit after reg signal
signal MUXREG_out_ALU_B : STD_LOGIC_VECTOR(31 downto 0);
--ALU CONTROL signal 
signal ALU_CONTROL_ALU_OP: STD_LOGIC_VECTOR(3 downto 0);
--shiftleft2 signal 
signal sl2_adder: STD_LOGIC_VECTOR(31 downto 0);
--adder4 signal 
signal adder4_out_adder4_in_mux32bit: STD_LOGIC_VECTOR(31 downto 0);
--adder signal 
signal adder_out_mux32bit: STD_LOGIC_VECTOR(31 downto 0);
--pc signal 
signal pc_out_adder4_insmem_in : STD_LOGIC_VECTOR(31 downto 0);
--mux32bit after adder signal 
signal mux32bit_out_pc_in : STD_LOGIC_VECTOR(31 downto 0);
--ALU signals
signal ALu_ZERO_AND : STD_LOGIC;
signal ALU_OUT_MEM_mux_IN: STD_LOGIC_VECTOR(31 downto 0);
--Memunit signal 
signal datamem_out_mux_in :STD_LOGIC_VECTOR(31 downto 0);
 
begin
--contorl unit mapping
cu: ControlUnit port map(
opin =>INSTUCT_MEM_OUT (31 downto 26),
RegDst => regdst_mux5,
ALUSrc=>Alusrc_mux32bit,
MemtoReg=>memtoreg_mux32,
RegWrite=>regwrite_registerr,
MemWrite=>memwrite_mem,
MemRead=>memread_mem,
Branch=>branch_and,
AluOp=>ALUop_alucontrol
);
--register mapping 
reg: reggg port map( 	  
readreg1 => INSTUCT_MEM_OUT (25 downto 21),
readreg2 => INSTUCT_MEM_OUT (20 downto 16),
writedata => MUX32BIT_out_writedata,
readdata1 =>REG_readdata1_A, 
readdata2 => REG_readdata1_B,
writereg1 => mux5out_writeregister,
regwrite => regwrite_registerr,
clk => clock
);
--mux 5 mapping 
muxx: mux5 port map(
in1 => INSTUCT_MEM_OUT (20 downto 16),
in2 => INSTUCT_MEM_OUT (15 downto 11),
s => regdst_mux5,
outt => mux5out_writeregister
);
--sign extend mapping
signext: signextend port map(
inputt => INSTUCT_MEM_OUT (15 downto 0),
outputt => SIGNEXT_OUT_sl2_mux32bit
);
--mux 32 bit after register mapping 
mux32bitreg: Mux32Bit port map(
A => REG_readdata1_B,
B =>SIGNEXT_OUT_sl2_mux32bit,
Z =>MUXREG_out_ALU_B,
sel => Alusrc_mux32bit
);
--ALU control mappping 
alucontroll : alucontrol port map(
aluin =>ALUop_alucontrol,
funin => INSTUCT_MEM_OUT (5 downto 0),
op =>ALU_CONTROL_ALU_OP
);
--shiftleft mapping 
shiftleft2 : shiftleft port map(
inputt =>SIGNEXT_OUT_sl2_mux32bit,
outputt => sl2_adder
);
--adder mapping 
adderr : adderrrrrr port map (
input1 =>adder4_out_adder4_in_mux32bit,
input2 =>sl2_adder,
outputt =>adder_out_mux32bit
);
--adder4 mapping 
adderr4 : adder4 port map(
in1 =>pc_out_adder4_insmem_in,
outt =>adder4_out_adder4_in_mux32bit
);
--pc mapping 
pcc : PC port map(
inputt =>mux32bit_out_pc_in,
clk => clock,
outputt =>pc_out_adder4_insmem_in
);
--mux32bit after adder mapping
muxxx : Mux32Bit port map(
A => adder4_out_adder4_in_mux32bit,
B =>adder_out_mux32bit,
Z =>mux32bit_out_pc_in,
sel => branch_and AND ALu_ZERO_AND
); 
--instruction memory mappping 
instmem : instructionmem port map(
Address => pc_out_adder4_insmem_in,
clk => clock,
Instruction =>INSTUCT_MEM_OUT
);
-- ALU mapping 
aluu : ALU port map(
A =>REG_readdata1_A,
B =>MUXREG_out_ALU_B,
op =>ALU_CONTROL_ALU_OP,
zero =>ALu_ZERO_AND,
res =>ALU_OUT_MEM_mux_IN
);
--datamem mapping
datamem: mem_unit port map(
address => ALU_OUT_MEM_mux_IN,
writedata => REG_readdata1_B,
memwrite =>memwrite_mem,
memread =>memread_mem,
clk => clock,
readdata =>datamem_out_mux_in
);
--mux after data memory mapping
muxxxxx :Mux32Bit port map(
A => ALU_OUT_MEM_mux_IN,
B => datamem_out_mux_in,
Z => MUX32BIT_out_writedata,
sel => memtoreg_mux32
);  


end Behavioral;

