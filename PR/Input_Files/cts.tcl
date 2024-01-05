set BASENAME spi_combine
createClockTreeSpec -output $BASENAME.ctstch
setCTSMode -routeGuide true
setCTSMode -routeClkNet true
clockDesign -outDir ${BASENAME}_clock_reports

