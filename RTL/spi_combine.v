//////////////////////////////////////////////////////////////
//// SPI combine                                          ////
////        - combine SPI master mode and slave mode      ////
//// Authors: chy,drh,gez                                 ////
//// Description: This is the top module of the spi chip. ////
////  It consists of a mastermode module ,a slavemode     ////
////  module , a data distributor and three tri-state     ////   
////  inout ports.The working mode is determined by the   ////
////  fifth bit of the control register.                  ////
//////////////////////////////////////////////////////////////
module spi_combine (
    input                    clk_i          ,//1          
    input                    rstn_i         ,//2           
    //SPI licence               
    inout                    mosi           ,//2
    inout                    miso           ,//2
    inout                    sck            ,//3
    input                    ssn_i          ,//3               //Used in slave mode
    output      [7:0]        ssn_o          ,//3               //Used in master mode 
    //Master interface      
    input                    stb_i          ,//1            // MCU address spi core enable
    input       [1:0]        addr_i         ,//1            // Address
    input                    we_i           ,//1            // MCU write in SPI core/ 1=write 0=read
    input       [7:0]        data_i         ,//1            // Data input
    output      [7:0]        data_o         ,//2              // Data output
    output                   ack_o          ,//2              // MCU termination
    output                   int_o          ,//2              // Interrupt output signal
    //Slave interface       
    input                    tx_valid_i       ,//3               // tx_data_i is valid
    input       [7:0]        tx_data_i        ,//4               // Data from host,be sent to spi master by miso 
    output                   rx_valid_o       ,//3               // rx_data_o is valid
    output      [7:0]        rx_data_o         //4               // Data to host,be received from spi master by mosi

);
//
//--------------------Module Body---------------------------//
// 
//--------------------Reg/Wire Define-----------------------//
//Master Mode
wire             miso_i            ; 
wire             sck_o             ; 
wire             mosi_o            ; 
//Slave  Mode              
wire             sck_i             ; 
wire             mosi_i            ;  
wire             miso_o            ; 
//Top signals      
reg    [7:0]     spi_con           ; 
reg              rstn_sync         ;
reg              rstn_temp         ;
wire             master_mode_en    ;
wire             slave_mode_en     ;
wire             wb_acc            ;
wire             wb_wr             ;
//Control Register
wire             spi_en            ;
wire             mode_sel          ;
wire             cpol              ;
wire             cpha              ;


//--------------------Main Code-----------------------------//
 
//Rstn_sync - Asynchronous reset and synchronous release
always @(posedge clk_i or negedge rstn_i) begin
    if (!rstn_i) begin
        rstn_sync <= 1'b0;
        rstn_temp <= 1'b0;
    end
    else begin
        rstn_temp <= 1'b1;
        rstn_sync <= rstn_temp;
    end
end

//Wishbone signals
assign    wb_acc    =   stb_i           ;
assign    wb_wr     =   wb_acc & we_i   ;

//--------------------Control register config---------------//
always @(posedge clk_i or negedge rstn_sync) begin
    if (!rstn_sync) begin
        spi_con <= 8'b00100000;
    end
    else if (wb_wr && addr_i == 2'b00) begin
        spi_con <= data_i ; 
    end
end

assign    spi_en      =    spi_con[7]    ;                  //SPI enable bit
assign    mode_sel    =    spi_con[5]    ;                  //Select master or slave mode
assign    cpol        =    spi_con[4]    ;                  //Clock polarity bit
assign    cpha        =    spi_con[3]    ;                  //Clock phase bit

//--------------------Mode selection------------------------//
assign    master_mode_en =    mode_sel && spi_en ;
assign    slave_mode_en  =  ~ mode_sel && spi_en ;

//--------------------Instantiate modules-------------------//
spi_MasterMode spi_MasterMode_u(
    //MCU interface
    .clk_i      ( clk_i         )      ,        
    .rstn_i     ( rstn_sync     )      ,        
    .master_mode( master_mode_en)      ,  
    .stb_i      ( stb_i         )      ,        
    .addr_i     ( addr_i        )      ,        
    .we_i       ( we_i          )      ,        
    .data_i     ( data_i        )      ,        
    .data_o     ( data_o        )      ,        
    .ack_o      ( ack_o         )      ,        
    .int_o      ( int_o         )      ,     
    .miso_i     ( miso_i        )      ,        
    //SPI           
    .sck_o      ( sck_o         )      ,        
    .mosi_o     ( mosi_o        )      ,        
    .ssn_o_8    ( ssn_o         )      ,        
    .spi_con_i  ( spi_con       )
); 

spi_SlaveMode spi_SlaveMode_u(
    //Host interface
    .sys_clk_i  ( clk_i         )      ,
    .sys_rstn_i ( rstn_sync     )      , 
    .slave_mode ( slave_mode_en )      , 
    .tx_valid   ( tx_valid_i      )      , 
    .tx_data    ( tx_data_i       )      ,        
    .rx_valid_d1( rx_valid_o      )      ,    
    .rx_data    ( rx_data_o       )      ,       
    //SPI       
    .sck_i      ( sck_i         )      ,    
    .ssn_i      ( ssn_i         )      ,      
    .mosi_i     ( mosi_i        )      ,  
    .miso_o     ( miso_o        )      ,   
    .cpol       ( cpol          )      ,   
    .cpha       ( cpha          )   
);
    
inout_port mosi_inout_port(     
    .outline    ( mosi_o        )      ,
    .control    ( mode_sel      )      ,
    .inline     ( mosi_i        )      ,
    .portline   ( mosi          )     
);

inout_port miso_inout_port(  
    .outline    ( miso_o        )      ,
    .control    ( ~mode_sel     )      ,
    .inline     ( miso_i        )      ,
    .portline   ( miso          )
);

inout_port sck_inout_port(   
    .outline    ( sck_o         )      ,
    .control    ( mode_sel      )      ,
    .inline     ( sck_i         )      ,
    .portline   ( sck           )
);

endmodule
