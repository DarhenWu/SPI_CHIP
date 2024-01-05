# Export the DEF, v, spef, sdf, lef, and lib files
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.6
defOut -floorplan -netlist -routing $BASENAME.def
saveDesign ${BASENAME}_done.enc –def
puts "----------Output ${BASENAME}_soc.v file---------“
saveNetlist [format "%s_soc.v" $BASENAME]
puts "--------Save models for hierarchical flow------“
saveModel -cts -sdf -spef -dir ${BASENAME}_hier_data
extractRC -outfile $BASENAME.cap
rcOut -spef $BASENAME.spef
#delayCal -sdf $BASENAME.sdf –idealclock
write_sdf $BASENAME.sdf



