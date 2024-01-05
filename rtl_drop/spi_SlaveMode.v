///////////////////////////////////////////////////////////
//// SPI Slave Mode                                    ////
////        - SPI chip working as slave                ////
//// Authors: chy,drh,gez                              ////
//// Description: This is the slavemode of the chip.   ////
////  It requires a host to load data transmitting     ////
////  by miso and to receive data received on mosi.    ////
////                                                   ////
///////////////////////////////////////////////////////////
module spi_SlaveMode (
    //SPI standard ports
    input                   sck_i          ,
    input                   ssn_i          ,            //Low active
    input                   mosi_i         ,  
    output                  miso_o         ,
    //Host interface    
    input                   sys_clk_i      ,
    input                   sys_rstn_i     , 
    input                   slave_mode     , 
    input                   tx_valid       , 
    input           [7:0]   tx_data        ,            //Data from host,be sent to spi master by miso 
    output   reg            rx_valid_d1    ,
    output   reg    [7:0]   rx_data        ,            //Data to host,be received from spi master by mosi
    input                   cpol           ,
    input                   cpha       
);
//
//------------------Module Body---------------------------//
//
//------------------Reg/Wire Define-----------------------//
//Host signals
wire                        slave_ena      ;              //SPI slave mode enable
reg         [7:0]           sfr_rx         ;              //Shift register of received data 
reg         [7:0]           sfr_tx         ;              //Shift register of transmitted data 
//SPI signals       
wire                        spi_clk        ;
reg         [2:0]           tx_bit_cnt     ;  
reg         [2:0]           rx_bit_cnt     ;    
reg                         rx_valid       ;
reg                         rx_valid_d0    ;        
wire                        miso_bit       ;  


//------------------Main Code-----------------------------//

assign    spi_clk   = sck_i ^ cpol ^ cpha   ;
assign    slave_ena = slave_mode & !ssn_i   ;

//Receive shift register config          ***receiving data uses spi_clk***
always @(posedge spi_clk or negedge sys_rstn_i) begin
    if (!sys_rstn_i) begin
        sfr_rx <= 8'd0;
    end
    else if(slave_ena) begin
        sfr_rx <= {sfr_rx[6:0], mosi_i} ;
    end
end

//Set rx_valid             ***setting rx_valid signal uses spi_clk***
always @(posedge spi_clk or negedge sys_rstn_i) begin
    if(!sys_rstn_i) begin
        rx_valid <= 1'b0;            
    end
    else if(slave_ena)begin
        rx_valid <= !rx_bit_cnt;
    end
end

//Receive data config             ***sending received data to host uses sys_clk***
always @(posedge sys_clk_i or negedge sys_rstn_i) begin 
    if (!sys_rstn_i) begin
        rx_valid_d0 <= 1'b0;
        rx_valid_d1 <= 1'b0;
        rx_data     <= 8'h00;
    end
    else if (slave_ena)begin
        rx_valid_d0 <= rx_valid;
        rx_valid_d1 <= rx_valid_d0;
        if (rx_valid_d0 == 1'b1 && rx_valid_d1 == 1'b0) begin    //catch rising edge of rx_valid
            rx_data <= sfr_rx;
        end
    end
end

//Load transmit data               ***loading data from host uses sys_clk***
always @(posedge sys_clk_i or negedge sys_rstn_i) begin 
    if (!sys_rstn_i) begin
        sfr_tx <= 8'dx;        
    end
    else if(slave_ena) begin
        if (tx_valid) begin
            sfr_tx <= tx_data; 
        end    
    end
end

assign    miso_bit  =   sfr_tx [tx_bit_cnt + cpha] ;
assign    miso_o    =   ssn_i ? 1'bz : miso_bit    ;

//Generate bit counter
always @(posedge spi_clk or negedge sys_rstn_i) begin
    if (!sys_rstn_i) begin
        rx_bit_cnt <= 3'd7;
    end
    else if(slave_ena)begin
        rx_bit_cnt <= rx_bit_cnt - 1'b1;
    end
end
always @(negedge spi_clk or negedge sys_rstn_i) begin
    if (!sys_rstn_i) begin
        tx_bit_cnt <= 3'd7;
    end
    else if(slave_ena)begin
        tx_bit_cnt <= tx_bit_cnt - 1'b1;
    end
end
 
endmodule
