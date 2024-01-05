###################################################################

# Created by write_sdc on Mon Jan  1 18:08:47 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_load -pin_load 0.0074636 [get_ports mosi]
set_load -pin_load 0.0074636 [get_ports miso]
set_load -pin_load 0.0074636 [get_ports sck]
set_load -pin_load 0.0074636 [get_ports {ssn_o[7]}]
set_load -pin_load 0.0074636 [get_ports {ssn_o[6]}]
set_load -pin_load 0.0074636 [get_ports {ssn_o[5]}]
set_load -pin_load 0.0074636 [get_ports {ssn_o[4]}]
set_load -pin_load 0.0074636 [get_ports {ssn_o[3]}]
set_load -pin_load 0.0074636 [get_ports {ssn_o[2]}]
set_load -pin_load 0.0074636 [get_ports {ssn_o[1]}]
set_load -pin_load 0.0074636 [get_ports {ssn_o[0]}]
set_load -pin_load 0.0074636 [get_ports {data_o[7]}]
set_load -pin_load 0.0074636 [get_ports {data_o[6]}]
set_load -pin_load 0.0074636 [get_ports {data_o[5]}]
set_load -pin_load 0.0074636 [get_ports {data_o[4]}]
set_load -pin_load 0.0074636 [get_ports {data_o[3]}]
set_load -pin_load 0.0074636 [get_ports {data_o[2]}]
set_load -pin_load 0.0074636 [get_ports {data_o[1]}]
set_load -pin_load 0.0074636 [get_ports {data_o[0]}]
set_load -pin_load 0.0074636 [get_ports ack_o]
set_load -pin_load 0.0074636 [get_ports int_o]
set_load -pin_load 0.0074636 [get_ports rx_valid]
set_load -pin_load 0.0074636 [get_ports {rx_data[7]}]
set_load -pin_load 0.0074636 [get_ports {rx_data[6]}]
set_load -pin_load 0.0074636 [get_ports {rx_data[5]}]
set_load -pin_load 0.0074636 [get_ports {rx_data[4]}]
set_load -pin_load 0.0074636 [get_ports {rx_data[3]}]
set_load -pin_load 0.0074636 [get_ports {rx_data[2]}]
set_load -pin_load 0.0074636 [get_ports {rx_data[1]}]
set_load -pin_load 0.0074636 [get_ports {rx_data[0]}]
set_ideal_network [get_ports clk_i]
create_clock [get_ports clk_i]  -period 12  -waveform {0 6}
set_clock_latency -max 0.5  [get_clocks clk_i]
set_clock_uncertainty -setup 0.6  [get_clocks clk_i]
set_clock_uncertainty -hold 0.5  [get_clocks clk_i]
set_clock_transition -max -rise 0.4 [get_clocks clk_i]
set_clock_transition -max -fall 0.4 [get_clocks clk_i]
set_clock_transition -min -rise 0.4 [get_clocks clk_i]
set_clock_transition -min -fall 0.4 [get_clocks clk_i]
create_clock [get_pins spi_SlaveMode_u/sck_i]  -name spi_SlaveMode_u/sck_i  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.6  [get_clocks spi_SlaveMode_u/sck_i]
set_clock_uncertainty -hold 0.5  [get_clocks spi_SlaveMode_u/sck_i]
set_clock_transition -max -rise 0.4 [get_clocks spi_SlaveMode_u/sck_i]
set_clock_transition -max -fall 0.4 [get_clocks spi_SlaveMode_u/sck_i]
set_clock_transition -min -rise 0.4 [get_clocks spi_SlaveMode_u/sck_i]
set_clock_transition -min -fall 0.4 [get_clocks spi_SlaveMode_u/sck_i]
set_false_path   -from [get_ports rstn_i]  -to [list [get_cells {spi_SlaveMode_u/tx_bit_cnt_reg[0]}] [get_cells          \
{spi_SlaveMode_u/tx_bit_cnt_reg[1]}] [get_cells                                \
{spi_SlaveMode_u/tx_bit_cnt_reg[2]}] [get_cells                                \
{spi_SlaveMode_u/rx_bit_cnt_reg[0]}] [get_cells                                \
{spi_SlaveMode_u/rx_bit_cnt_reg[1]}] [get_cells                                \
{spi_SlaveMode_u/rx_bit_cnt_reg[2]}] [get_cells                                \
{spi_SlaveMode_u/sfr_tx_reg[0]}] [get_cells {spi_SlaveMode_u/sfr_tx_reg[1]}]   \
[get_cells {spi_SlaveMode_u/sfr_tx_reg[2]}] [get_cells                         \
{spi_SlaveMode_u/sfr_tx_reg[3]}] [get_cells {spi_SlaveMode_u/sfr_tx_reg[4]}]   \
[get_cells {spi_SlaveMode_u/sfr_tx_reg[5]}] [get_cells                         \
{spi_SlaveMode_u/sfr_tx_reg[6]}] [get_cells {spi_SlaveMode_u/sfr_tx_reg[7]}]   \
[get_cells {spi_SlaveMode_u/rx_data_reg[0]}] [get_cells                        \
{spi_SlaveMode_u/rx_data_reg[1]}] [get_cells {spi_SlaveMode_u/rx_data_reg[2]}] \
[get_cells {spi_SlaveMode_u/rx_data_reg[3]}] [get_cells                        \
{spi_SlaveMode_u/rx_data_reg[4]}] [get_cells {spi_SlaveMode_u/rx_data_reg[5]}] \
[get_cells {spi_SlaveMode_u/rx_data_reg[6]}] [get_cells                        \
{spi_SlaveMode_u/rx_data_reg[7]}] [get_cells spi_SlaveMode_u/rx_valid_d1_reg]  \
[get_cells spi_SlaveMode_u/rx_valid_d0_reg] [get_cells                         \
spi_SlaveMode_u/rx_valid_reg] [get_cells {spi_SlaveMode_u/sfr_rx_reg[0]}]      \
[get_cells {spi_SlaveMode_u/sfr_rx_reg[1]}] [get_cells                         \
{spi_SlaveMode_u/sfr_rx_reg[2]}] [get_cells {spi_SlaveMode_u/sfr_rx_reg[3]}]   \
[get_cells {spi_SlaveMode_u/sfr_rx_reg[4]}] [get_cells                         \
{spi_SlaveMode_u/sfr_rx_reg[5]}] [get_cells {spi_SlaveMode_u/sfr_rx_reg[6]}]   \
[get_cells {spi_SlaveMode_u/sfr_rx_reg[7]}] [get_cells                         \
spi_MasterMode_u/write_fifo/full_reg] [get_cells                               \
spi_MasterMode_u/write_fifo/empty_reg] [get_cells                              \
{spi_MasterMode_u/write_fifo/mem_reg[3][0]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[3][1]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[3][2]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[3][3]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[3][4]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[3][5]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[3][6]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[3][7]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[2][0]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[2][1]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[2][2]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[2][3]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[2][4]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[2][5]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[2][6]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[2][7]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[1][0]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[1][1]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[1][2]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[1][3]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[1][4]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[1][5]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[1][6]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[1][7]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[0][0]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[0][1]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[0][2]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[0][3]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[0][4]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[0][5]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[0][6]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/mem_reg[0][7]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/wr_ptr_reg[0]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/wr_ptr_reg[1]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/wr_ptr_reg[2]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/re_ptr_reg[0]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/re_ptr_reg[1]}] [get_cells                        \
{spi_MasterMode_u/write_fifo/re_ptr_reg[2]}] [get_cells                        \
spi_MasterMode_u/read_fifo/full_reg] [get_cells                                \
spi_MasterMode_u/read_fifo/empty_reg] [get_cells                               \
{spi_MasterMode_u/read_fifo/mem_reg[3][0]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[3][1]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[3][2]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[3][3]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[3][4]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[3][5]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[3][6]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[3][7]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[2][0]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[2][1]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[2][2]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[2][3]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[2][4]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[2][5]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[2][6]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[2][7]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[1][0]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[1][1]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[1][2]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[1][3]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[1][4]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[1][5]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[1][6]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[1][7]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[0][0]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[0][1]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[0][2]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[0][3]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[0][4]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[0][5]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[0][6]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/mem_reg[0][7]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/wr_ptr_reg[0]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/wr_ptr_reg[1]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/wr_ptr_reg[2]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/re_ptr_reg[0]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/re_ptr_reg[1]}] [get_cells                         \
{spi_MasterMode_u/read_fifo/re_ptr_reg[2]}] [get_cells                         \
spi_MasterMode_u/ssn_reg] [get_cells {spi_MasterMode_u/state_reg[0]}]          \
[get_cells {spi_MasterMode_u/state_reg[1]}] [get_cells                         \
{spi_MasterMode_u/state_reg[2]}] [get_cells spi_MasterMode_u/rfifo_wen_reg]    \
[get_cells {spi_MasterMode_u/bit_cnt_reg[0]}] [get_cells                       \
{spi_MasterMode_u/bit_cnt_reg[1]}] [get_cells                                  \
{spi_MasterMode_u/bit_cnt_reg[2]}] [get_cells spi_MasterMode_u/sck_o_reg]      \
[get_cells {spi_MasterMode_u/data_buf_reg[0]}] [get_cells                      \
{spi_MasterMode_u/data_buf_reg[1]}] [get_cells                                 \
{spi_MasterMode_u/data_buf_reg[2]}] [get_cells                                 \
{spi_MasterMode_u/data_buf_reg[3]}] [get_cells                                 \
{spi_MasterMode_u/data_buf_reg[4]}] [get_cells                                 \
{spi_MasterMode_u/data_buf_reg[5]}] [get_cells                                 \
{spi_MasterMode_u/data_buf_reg[6]}] [get_cells                                 \
{spi_MasterMode_u/data_buf_reg[7]}] [get_cells spi_MasterMode_u/wfifo_ren_reg] \
[get_cells {spi_MasterMode_u/clk_cnt_reg[0]}] [get_cells                       \
{spi_MasterMode_u/clk_cnt_reg[1]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[2]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[3]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[4]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[5]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[6]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[7]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[8]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[9]}] [get_cells                                  \
{spi_MasterMode_u/clk_cnt_reg[10]}] [get_cells                                 \
{spi_MasterMode_u/clk_cnt_reg[11]}] [get_cells                                 \
{spi_MasterMode_u/clk_cnt_reg[12]}] [get_cells spi_MasterMode_u/int_o_reg]     \
[get_cells spi_MasterMode_u/ack_o_reg] [get_cells                              \
{spi_MasterMode_u/data_o_reg[0]}] [get_cells {spi_MasterMode_u/data_o_reg[1]}] \
[get_cells {spi_MasterMode_u/data_o_reg[2]}] [get_cells                        \
{spi_MasterMode_u/data_o_reg[3]}] [get_cells {spi_MasterMode_u/data_o_reg[4]}] \
[get_cells {spi_MasterMode_u/data_o_reg[5]}] [get_cells                        \
{spi_MasterMode_u/data_o_reg[6]}] [get_cells {spi_MasterMode_u/data_o_reg[7]}] \
[get_cells spi_MasterMode_u/wr_col_f_reg] [get_cells                           \
spi_MasterMode_u/spi_int_f_reg] [get_cells                                     \
{spi_MasterMode_u/trans_cnt_reg[0]}] [get_cells                                \
{spi_MasterMode_u/trans_cnt_reg[1]}] [get_cells                                \
{spi_MasterMode_u/spi_ext_reg[0]}] [get_cells                                  \
{spi_MasterMode_u/spi_ext_reg[1]}] [get_cells                                  \
{spi_MasterMode_u/spi_ext_reg[2]}] [get_cells                                  \
{spi_MasterMode_u/spi_ext_reg[3]}] [get_cells                                  \
{spi_MasterMode_u/spi_ext_reg[4]}] [get_cells                                  \
{spi_MasterMode_u/spi_ext_reg[5]}] [get_cells                                  \
{spi_MasterMode_u/spi_ext_reg[6]}] [get_cells                                  \
{spi_MasterMode_u/spi_ext_reg[7]}] [get_cells {spi_con_reg[0]}] [get_cells     \
{spi_con_reg[1]}] [get_cells {spi_con_reg[2]}] [get_cells {spi_con_reg[3]}]    \
[get_cells {spi_con_reg[4]}] [get_cells {spi_con_reg[5]}] [get_cells           \
{spi_con_reg[6]}] [get_cells {spi_con_reg[7]}] [get_cells rstn_temp_reg]       \
[get_cells rstn_sync_reg]]
set_input_delay -clock clk_i  5  [get_ports clk_i]
set_input_delay -clock clk_i  5  [get_ports mosi]
set_input_delay -clock clk_i  5  [get_ports miso]
set_input_delay -clock clk_i  5  [get_ports sck]
set_input_delay -clock clk_i  5  [get_ports ssn_i]
set_input_delay -clock clk_i  5  [get_ports stb_i]
set_input_delay -clock clk_i  5  [get_ports {addr_i[1]}]
set_input_delay -clock clk_i  5  [get_ports {addr_i[0]}]
set_input_delay -clock clk_i  5  [get_ports we_i]
set_input_delay -clock clk_i  5  [get_ports {data_i[7]}]
set_input_delay -clock clk_i  5  [get_ports {data_i[6]}]
set_input_delay -clock clk_i  5  [get_ports {data_i[5]}]
set_input_delay -clock clk_i  5  [get_ports {data_i[4]}]
set_input_delay -clock clk_i  5  [get_ports {data_i[3]}]
set_input_delay -clock clk_i  5  [get_ports {data_i[2]}]
set_input_delay -clock clk_i  5  [get_ports {data_i[1]}]
set_input_delay -clock clk_i  5  [get_ports {data_i[0]}]
set_input_delay -clock clk_i  5  [get_ports tx_valid]
set_input_delay -clock clk_i  5  [get_ports {tx_data[7]}]
set_input_delay -clock clk_i  5  [get_ports {tx_data[6]}]
set_input_delay -clock clk_i  5  [get_ports {tx_data[5]}]
set_input_delay -clock clk_i  5  [get_ports {tx_data[4]}]
set_input_delay -clock clk_i  5  [get_ports {tx_data[3]}]
set_input_delay -clock clk_i  5  [get_ports {tx_data[2]}]
set_input_delay -clock clk_i  5  [get_ports {tx_data[1]}]
set_input_delay -clock clk_i  5  [get_ports {tx_data[0]}]
set_output_delay -clock clk_i  5  [get_ports mosi]
set_output_delay -clock clk_i  5  [get_ports miso]
set_output_delay -clock clk_i  5  [get_ports sck]
set_output_delay -clock clk_i  5  [get_ports {ssn_o[7]}]
set_output_delay -clock clk_i  5  [get_ports {ssn_o[6]}]
set_output_delay -clock clk_i  5  [get_ports {ssn_o[5]}]
set_output_delay -clock clk_i  5  [get_ports {ssn_o[4]}]
set_output_delay -clock clk_i  5  [get_ports {ssn_o[3]}]
set_output_delay -clock clk_i  5  [get_ports {ssn_o[2]}]
set_output_delay -clock clk_i  5  [get_ports {ssn_o[1]}]
set_output_delay -clock clk_i  5  [get_ports {ssn_o[0]}]
set_output_delay -clock clk_i  5  [get_ports {data_o[7]}]
set_output_delay -clock clk_i  5  [get_ports {data_o[6]}]
set_output_delay -clock clk_i  5  [get_ports {data_o[5]}]
set_output_delay -clock clk_i  5  [get_ports {data_o[4]}]
set_output_delay -clock clk_i  5  [get_ports {data_o[3]}]
set_output_delay -clock clk_i  5  [get_ports {data_o[2]}]
set_output_delay -clock clk_i  5  [get_ports {data_o[1]}]
set_output_delay -clock clk_i  5  [get_ports {data_o[0]}]
set_output_delay -clock clk_i  5  [get_ports ack_o]
set_output_delay -clock clk_i  5  [get_ports int_o]
set_output_delay -clock clk_i  5  [get_ports rx_valid]
set_output_delay -clock clk_i  5  [get_ports {rx_data[7]}]
set_output_delay -clock clk_i  5  [get_ports {rx_data[6]}]
set_output_delay -clock clk_i  5  [get_ports {rx_data[5]}]
set_output_delay -clock clk_i  5  [get_ports {rx_data[4]}]
set_output_delay -clock clk_i  5  [get_ports {rx_data[3]}]
set_output_delay -clock clk_i  5  [get_ports {rx_data[2]}]
set_output_delay -clock clk_i  5  [get_ports {rx_data[1]}]
set_output_delay -clock clk_i  5  [get_ports {rx_data[0]}]
set_clock_groups  -asynchronous -name clk_i_1  -group [get_clocks clk_i]       \
-group [get_clocks spi_SlaveMode_u/sck_i]
set_drive 5.92186  [get_ports clk_i]
set_drive 5.92186  [get_ports rstn_i]
set_drive 5.92186  [get_ports mosi]
set_drive 5.92186  [get_ports miso]
set_drive 5.92186  [get_ports sck]
set_drive 5.92186  [get_ports ssn_i]
set_drive 5.92186  [get_ports stb_i]
set_drive 5.92186  [get_ports {addr_i[1]}]
set_drive 5.92186  [get_ports {addr_i[0]}]
set_drive 5.92186  [get_ports we_i]
set_drive 5.92186  [get_ports {data_i[7]}]
set_drive 5.92186  [get_ports {data_i[6]}]
set_drive 5.92186  [get_ports {data_i[5]}]
set_drive 5.92186  [get_ports {data_i[4]}]
set_drive 5.92186  [get_ports {data_i[3]}]
set_drive 5.92186  [get_ports {data_i[2]}]
set_drive 5.92186  [get_ports {data_i[1]}]
set_drive 5.92186  [get_ports {data_i[0]}]
set_drive 5.92186  [get_ports tx_valid]
set_drive 5.92186  [get_ports {tx_data[7]}]
set_drive 5.92186  [get_ports {tx_data[6]}]
set_drive 5.92186  [get_ports {tx_data[5]}]
set_drive 5.92186  [get_ports {tx_data[4]}]
set_drive 5.92186  [get_ports {tx_data[3]}]
set_drive 5.92186  [get_ports {tx_data[2]}]
set_drive 5.92186  [get_ports {tx_data[1]}]
set_drive 5.92186  [get_ports {tx_data[0]}]
