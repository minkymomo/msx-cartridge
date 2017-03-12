//
//	LOGIC:		MAX II MSX BUS Master
//	MODULE NAME: 	MSX BUS
//	FILE NAME:		MsxBus.v
//	COMPANY:		Copyright 2017 Miso Kim. www.github.com/meesokim
//	REVISION HISTORY:
//	
//	Revision 1.0	2/3/2017	Description: Initial Release.
//
//  This module is the top level module for MAX II MSX BUS Master.
//

module msxbus_simple (MODE, MD, READY, CLK, PSW0, PSW1, 
ADDR, DATA, RESET, RD, WR, MREQ, IORQ, SLTSL, CS1, CS2, CS12, INT, BUSDIR, WAIT, MCLK, SW, SWOUT, RFSH, M1);

input [1:0] MODE;
input CLK;
inout reg [20:0] MD;
output reg READY;
output PSW0;
output PSW1;

input [1:0] SW;
input INT, BUSDIR, WAIT;
inout reg [7:0] DATA;
output reg RD;
output reg WR;
output reg MREQ;
output reg IORQ;
output RESET;
output reg [15:0] ADDR;
output reg [1:0] SLTSL;
output reg CS1;
output reg CS2;
output reg CS12;
output MCLK, SWOUT, RFSH;
output reg M1;

reg [7:0] rdata;
reg [7:0] wdata;
reg [2:0] clkcount;
reg ready1, mready0, mready1;
reg msxclk;
reg wr0, rd0, iorq0, mreq0;
reg [12:0] cycle;
reg [7:0] cnt;
reg [1:0] mode;
reg [13:0] timeout;
reg [12:0] timing;
reg mclk;
reg reset;
reg busreq;
reg busack;
reg access;
reg sltsl;

//assign MD[7:0] = MODE == 2'b01 ? rdata : 2'h00;

assign MCLK = msxclk;
assign SWOUT = 1'b0;
assign RESET = reset;
assign PSW0 = SW[0];
assign PSW1 = SW[1];

initial
begin
mready1 = 1'b1;
mready0 = 1'b1;
ready1 = 1'b1;	
SLTSL = 3;
CS1 = 1'b1;
CS2 = 1'b1;
CS12 = 1'b1;
wr0 = 1'b1;
rd0 = 1'b1;
mreq0 = 1'b1;
iorq0 = 1'b1;
clkcount = 0;
cycle = 0;
IORQ = 1'b1;
MREQ = 1'b1;
READY = 1'b1;
cnt = 0;
timeout = 0;
wdata = 0;
M1 = 1'bZ;
busreq = 1'b0;
busack = 1'b0;
access = 1'b0;
timing = 21;
end

always @(posedge CLK) begin
	case (MODE)
	0: begin
		MD[15:0] <= 16'bZ;
		ADDR <= MD[15:0];
		READY = 1'b0;
		busreq <= 1'b0;
		cycle <= 0;
		end
	1: begin
		if (!cycle[11])
			cycle <= cycle + 1;
		if (ADDR[7:0] == 2'hff && MD[15])
			reset <= 1'b0;
		else
			reset <= 1'b1;
		if (READY) begin
			IORQ <= !MD[15];
			MREQ <= !IORQ;
			RD <= MD[14];
			WR <= !MD[14];
			if (!RD) begin
				MD[7:0] = DATA;
				DATA = 8'bZ;
				if (cycle > 92)
					READY = 1'b0;
			end
			else begin
				DATA = MD[7:0];
				MD[7:0] = 8'bZ;
				if (cycle > 18)
					READY = 1'b0;
			end
			if (!MD[15]) begin
				SLTSL[1] <= MD[13];
				SLTSL[0] <= !MD[13];
				CS1 <= ADDR[15] && !ADDR[14];
				CS2 <= !ADDR[15] && ADDR[14];
				CS12 <= CS1 & CS2;
			end
		end
		else begin
			READY = 1'b0;
		end
		end
	2: begin
		READY = 1'b1;
		end
	3: begin
		READY = 1'b1;
		end
	endcase
	if (READY == 1'b0) begin
		SLTSL <= 2'b11;
		MREQ <= 1'b1;
		IORQ <= 1'b1;
		RD <= 1'b1;
		WR <= 1'b1;
		CS1 <= 1'b1;
		CS2 <= 1'b1;
		CS12 <= 1'b1;	
	end
end

always @ (negedge CLK) begin
    clkcount <= clkcount + 3'b001;
    if (clkcount == 3'b000)
		msxclk = ~msxclk; 
end

always @ (negedge CLK) begin
	mclk = ~mclk;
end

endmodule

