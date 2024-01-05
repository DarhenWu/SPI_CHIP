sidCmdLineBehaviorAnalysisOpt -incr -clockSkew 0 -loopUnroll 0 -bboxEmptyModule 0  -cellModel 0 -bboxIgnoreProtected 0 
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "850"
debImport "+v2k" "-sverilog" "-top" "tb_spi_master" "-f" "./pre_filelist.f"
debLoadSimResult /home/IC/SPI_CHIP/FUNC_SIM/tb_spi_master.fsdb
wvCreateWindow
srcHBSelect "tb_spi_master.u_spi_combine.spi_MasterMode_u" -win $_nTrace1
srcHBSelect "tb_spi_master.u_spi_combine.spi_MasterMode_u" -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_spi_master/u_spi_combine/spi_MasterMode_u/clk_i" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/rstn_i" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/master_mode" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/stb_i" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/addr_i\[1:0\]" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/we_i" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/data_i\[7:0\]" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/spi_con_i\[7:0\]" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/data_o\[7:0\]" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/ack_o" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/int_o" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/sck_o" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/ssn_o_8\[7:0\]" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/mosi_o" \
           "/tb_spi_master/u_spi_combine/spi_MasterMode_u/miso_i"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetCursor -win $_nWave2 37988431.140299 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 98023719.638806 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 59017741.235821 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 53590822.501493 -snap {("G1" 15)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 28152140.934328 -snap {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetCursor -win $_nWave2 15602391.361194 -snap {("G1" 14)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "tb_spi_master.u_spi_combine.spi_MasterMode_u" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_spi_master.u_spi_combine.spi_MasterMode_u" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "spi_ext" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 87445.467887 -snap {("G1" 16)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 341832.283559 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 437227.339436 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 683664.567118 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 726062.369729 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 760510.584352 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 1004297.949370 -snap {("G1" 12)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 132493.133162 -snap {("G1" 6)}
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 108644.369193 -snap {("G1" 5)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
debExit
