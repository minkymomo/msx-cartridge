


INOUT mdata[0];
INOUT mdata[1];
INOUT mdata[2];
INOUT mdata[3];
INOUT mdata[4];
INOUT mdata[5];
INOUT mdata[6];
INOUT mdata[7];
INOUT data_bus[0];
INOUT data_bus[1];
INOUT data_bus[2];
INOUT data_bus[3];
INOUT data_bus[4];
INOUT data_bus[5];
INOUT data_bus[6];
INOUT data_bus[7];
INPUT mclk;
INPUT clk;
INPUT maddr[0];
INPUT mrw;
INPUT maddr[1];
INPUT mcs;
INPUT nwait;
INPUT interrupt;
INPUT busdir;
INPUT sw1;
INPUT sw2;
OUTPUT address[0];
OUTPUT address[1];
OUTPUT address[2];
OUTPUT address[3];
OUTPUT address[4];
OUTPUT address[5];
OUTPUT address[6];
OUTPUT address[7];
OUTPUT address[8];
OUTPUT address[9];
OUTPUT address[10];
OUTPUT address[11];
OUTPUT address[12];
OUTPUT address[13];
OUTPUT address[14];
OUTPUT address[15];
OUTPUT rd;
OUTPUT wr;
OUTPUT iorq;
OUTPUT merq;
OUTPUT cs1;
OUTPUT cs2;
OUTPUT cs12;
OUTPUT sltsl;
OUTPUT m1;
OUTPUT reset;
OUTPUT rfsh;
OUTPUT msx_clk;
OUTPUT swout;

/*Arc definitions start here*/
pos_busdir__mclk__setup:		SETUP (POSEDGE) busdir mclk ;
pos_data_bus[0]__mclk__setup:		SETUP (POSEDGE) data_bus[0] mclk ;
pos_data_bus[1]__mclk__setup:		SETUP (POSEDGE) data_bus[1] mclk ;
pos_data_bus[2]__mclk__setup:		SETUP (POSEDGE) data_bus[2] mclk ;
pos_data_bus[3]__mclk__setup:		SETUP (POSEDGE) data_bus[3] mclk ;
pos_data_bus[4]__mclk__setup:		SETUP (POSEDGE) data_bus[4] mclk ;
pos_data_bus[5]__mclk__setup:		SETUP (POSEDGE) data_bus[5] mclk ;
pos_data_bus[6]__mclk__setup:		SETUP (POSEDGE) data_bus[6] mclk ;
pos_data_bus[7]__mclk__setup:		SETUP (POSEDGE) data_bus[7] mclk ;
pos_interrupt__mclk__setup:		SETUP (POSEDGE) interrupt mclk ;
pos_maddr[0]__mclk__setup:		SETUP (POSEDGE) maddr[0] mclk ;
pos_maddr[1]__mclk__setup:		SETUP (POSEDGE) maddr[1] mclk ;
pos_mcs__mclk__setup:		SETUP (POSEDGE) mcs mclk ;
pos_mrw__mclk__setup:		SETUP (POSEDGE) mrw mclk ;
pos_nwait__mclk__setup:		SETUP (POSEDGE) nwait mclk ;
pos_sw1__mclk__setup:		SETUP (POSEDGE) sw1 mclk ;
pos_sw2__mclk__setup:		SETUP (POSEDGE) sw2 mclk ;
pos_busdir__mclk__hold:		HOLD (POSEDGE) busdir mclk ;
pos_data_bus[0]__mclk__hold:		HOLD (POSEDGE) data_bus[0] mclk ;
pos_data_bus[1]__mclk__hold:		HOLD (POSEDGE) data_bus[1] mclk ;
pos_data_bus[2]__mclk__hold:		HOLD (POSEDGE) data_bus[2] mclk ;
pos_data_bus[3]__mclk__hold:		HOLD (POSEDGE) data_bus[3] mclk ;
pos_data_bus[4]__mclk__hold:		HOLD (POSEDGE) data_bus[4] mclk ;
pos_data_bus[5]__mclk__hold:		HOLD (POSEDGE) data_bus[5] mclk ;
pos_data_bus[6]__mclk__hold:		HOLD (POSEDGE) data_bus[6] mclk ;
pos_data_bus[7]__mclk__hold:		HOLD (POSEDGE) data_bus[7] mclk ;
pos_interrupt__mclk__hold:		HOLD (POSEDGE) interrupt mclk ;
pos_maddr[0]__mclk__hold:		HOLD (POSEDGE) maddr[0] mclk ;
pos_maddr[1]__mclk__hold:		HOLD (POSEDGE) maddr[1] mclk ;
pos_mcs__mclk__hold:		HOLD (POSEDGE) mcs mclk ;
pos_mrw__mclk__hold:		HOLD (POSEDGE) mrw mclk ;
pos_nwait__mclk__hold:		HOLD (POSEDGE) nwait mclk ;
pos_sw1__mclk__hold:		HOLD (POSEDGE) sw1 mclk ;
pos_sw2__mclk__hold:		HOLD (POSEDGE) sw2 mclk ;
pos_clk__msx_clk__delay:		DELAY (POSEDGE) clk msx_clk ;
pos_mclk__data_bus[0]__delay:		DELAY (POSEDGE) mclk data_bus[0] ;
pos_mclk__data_bus[1]__delay:		DELAY (POSEDGE) mclk data_bus[1] ;
pos_mclk__data_bus[2]__delay:		DELAY (POSEDGE) mclk data_bus[2] ;
pos_mclk__data_bus[3]__delay:		DELAY (POSEDGE) mclk data_bus[3] ;
pos_mclk__data_bus[4]__delay:		DELAY (POSEDGE) mclk data_bus[4] ;
pos_mclk__data_bus[5]__delay:		DELAY (POSEDGE) mclk data_bus[5] ;
pos_mclk__data_bus[6]__delay:		DELAY (POSEDGE) mclk data_bus[6] ;
pos_mclk__data_bus[7]__delay:		DELAY (POSEDGE) mclk data_bus[7] ;
pos_mclk__mdata[0]__delay:		DELAY (POSEDGE) mclk mdata[0] ;
pos_mclk__mdata[1]__delay:		DELAY (POSEDGE) mclk mdata[1] ;
pos_mclk__mdata[2]__delay:		DELAY (POSEDGE) mclk mdata[2] ;
pos_mclk__mdata[3]__delay:		DELAY (POSEDGE) mclk mdata[3] ;
pos_mclk__mdata[4]__delay:		DELAY (POSEDGE) mclk mdata[4] ;
pos_mclk__mdata[5]__delay:		DELAY (POSEDGE) mclk mdata[5] ;
pos_mclk__mdata[6]__delay:		DELAY (POSEDGE) mclk mdata[6] ;
pos_mclk__mdata[7]__delay:		DELAY (POSEDGE) mclk mdata[7] ;
pos_ready__address[0]__delay:		DELAY (POSEDGE) ready address[0] ;
pos_ready__address[1]__delay:		DELAY (POSEDGE) ready address[1] ;
pos_ready__address[2]__delay:		DELAY (POSEDGE) ready address[2] ;
pos_ready__address[3]__delay:		DELAY (POSEDGE) ready address[3] ;
pos_ready__address[4]__delay:		DELAY (POSEDGE) ready address[4] ;
pos_ready__address[5]__delay:		DELAY (POSEDGE) ready address[5] ;
pos_ready__address[6]__delay:		DELAY (POSEDGE) ready address[6] ;
pos_ready__address[7]__delay:		DELAY (POSEDGE) ready address[7] ;
pos_ready__address[8]__delay:		DELAY (POSEDGE) ready address[8] ;
pos_ready__address[9]__delay:		DELAY (POSEDGE) ready address[9] ;
pos_ready__address[10]__delay:		DELAY (POSEDGE) ready address[10] ;
pos_ready__address[11]__delay:		DELAY (POSEDGE) ready address[11] ;
pos_ready__address[12]__delay:		DELAY (POSEDGE) ready address[12] ;
pos_ready__address[13]__delay:		DELAY (POSEDGE) ready address[13] ;
pos_ready__address[14]__delay:		DELAY (POSEDGE) ready address[14] ;
pos_ready__address[15]__delay:		DELAY (POSEDGE) ready address[15] ;
pos_ready__cs1__delay:		DELAY (POSEDGE) ready cs1 ;
pos_ready__cs2__delay:		DELAY (POSEDGE) ready cs2 ;
pos_ready__cs12__delay:		DELAY (POSEDGE) ready cs12 ;
pos_ready__iorq__delay:		DELAY (POSEDGE) ready iorq ;
pos_ready__merq__delay:		DELAY (POSEDGE) ready merq ;
pos_ready__rd__delay:		DELAY (POSEDGE) ready rd ;
pos_ready__reset__delay:		DELAY (POSEDGE) ready reset ;
pos_ready__sltsl__delay:		DELAY (POSEDGE) ready sltsl ;
pos_ready__wr__delay:		DELAY (POSEDGE) ready wr ;

ENDMODEL
