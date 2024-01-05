sidCmdLineBehaviorAnalysisOpt -incr -clockSkew 0 -loopUnroll 0 -bboxEmptyModule 0  -cellModel 0 -bboxIgnoreProtected 0 
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "850"
debImport "+v2k" "-sverilog" "-top" "tb_spi_slave" "-f" "./layout_filelist.f"
debLoadSimResult /home/IC/SPI_CHIP/POST_SIM/AfterPR/tb_spi_slave.fsdb
wvCreateWindow
srcHBSelect "tb_spi_slave.u_spi_combine.spi_MasterMode_u" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
srcHBSelect "tb_spi_slave.u_spi_combine.spi_SlaveMode_u" -win $_nTrace1
srcHBSelect "tb_spi_slave.u_spi_combine.spi_SlaveMode_u" -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/sck_i" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/ssn_i" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/mosi_i" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/miso_o" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/sys_clk_i" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/sys_rstn_i" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/slave_mode" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/tx_valid" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/tx_data\[7:0\]" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/rx_valid_d1" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/rx_data\[7:0\]" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/cpol" \
           "/tb_spi_slave/u_spi_combine/spi_SlaveMode_u/cpha"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 13)}
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 392683.555298 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 152240.393746 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 73703.682687 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 129283.508975 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 755160.683266 -snap {("G1" 3)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 8191983.092067 -snap {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetCursor -win $_nWave2 604128.546613 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetCursor -win $_nWave2 2585670.179502 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 1353247.944412 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 1425743.370006 -snap {("G1" 6)}
debExit
