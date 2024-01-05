sidCmdLineBehaviorAnalysisOpt -incr -clockSkew 0 -loopUnroll 0 -bboxEmptyModule 0  -cellModel 0 -bboxIgnoreProtected 0 
debImport "+v2k" "-sverilog" "-top" "tb_spi_slave" "-f" "./netlist_filelist.f"
debLoadSimResult /home/IC/SPI_CHIP/POST_SIM/tb_spi_slave.fsdb
wvCreateWindow
srcHBSelect "tb_spi_slave" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
srcHBAddObjectToWave
srcDeselectAll -win $_nTrace1
srcSelect -signal "spi_PERIOD" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1918" "850"
srcHBSelect "tb_spi_slave.u_spi_combine" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
srcHBSelect "tb_spi_slave" -win $_nTrace1
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
wvSetCursor -win $_nWave2 566439.258112 -snap {("G1" 10)}
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 5920459.756804 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetCursor -win $_nWave2 1147844.238564 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 1027018.529241 -snap {("G1" 4)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 8411443.254198 -snap {("G1" 4)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1329082.802548 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 724954.255935 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 1413660.799074 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1389495.657209 -snap {("G1" 3)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetCursor -win $_nWave2 1214238.563984 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 1333867.979155 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1345830.920672 -snap {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetCursor -win $_nWave2 2069588.882455 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 1363775.332947 -snap {("G1" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetCursor -win $_nWave2 1377413.086277 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1764055.356109 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 1401578.228141 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1389495.657209 -snap {("G1" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetCursor -win $_nWave2 2162780.196873 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 1377413.086277 -snap {("G1" 3)}
wvSetMarker -win $_nWave2 1360294.000000
wvSetCursor -win $_nWave2 2102367.342212 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 1280752.518819 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1317000.231616 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1751972.785177 -snap {("G1" 1)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 2537339.895773 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 2476927.041112 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 2513174.753909 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 2634000.463231 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 2803156.456283 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 3914752.982050 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 2041954.487551 -snap {("G1" 1)}
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 2500254.777070 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 1429571.511291 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1597052.692530 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1746589.461494 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1943977.996526 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2069588.882455 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2231088.592936 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2398569.774175 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2554088.013897 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2625865.662999 -snap {("G1" 1)}
wvSetMarker -win $_nWave2 2640349.000000
wvSetCursor -win $_nWave2 1423590.040533 -snap {("G1" 8)}
wvSetMarker -win $_nWave2 1360349.000000
wvSetMarker -win $_nWave2 2640349.000000
wvSetMarker -win $_nWave2 3920349.000000
wvSetCursor -win $_nWave2 4462177.185871 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 3744400.694847 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 1369756.803706 -snap {("G1" 8)}
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 6862900.289519 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 3890587.840185 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetCursor -win $_nWave2 14027864.852345 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 2863569.310944 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 10415176.143602 -snap {("G1" 8)}
wvSetMarker -win $_nWave2 10380000.000000
wvSetCursor -win $_nWave2 9653974.174870 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
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
wvSetCursor -win $_nWave2 2501092.182976 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 543715.691951 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 724954.255935 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 1413660.799074 -snap {("G1" 6)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 2548106.543138 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 4264788.650840 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 3947770.700637 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 4581806.601042 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 4874898.668211 -snap {("G1" 4)}
debExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
debExit
