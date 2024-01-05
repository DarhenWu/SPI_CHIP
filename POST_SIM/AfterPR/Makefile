#***************Makefile for LAYOUT simulation***************
.PHONY:com sim verdi cov debug clean

#***************Variable Definition**********************
OUTPUT = spi_master
# OUTPUT = spi_slave
tb_master = tb_spi_master
tb_slave  = tb_spi_slave
ALL_DEFINE = +define+DUMP_VPD	\
			 +define+DUMP_FSDB	\
			 #+NET_SIM       \
			 +LAYOUT_SIM  
VPD_NAME = +vpdfile+${OUTPUT}.vpd
filelist = ./layout_filelist.f
LIB_FILE = -v ../../LIB/scc018v3ebcd_uhd50_rvt.v	 	   #Can be changed
#compile command
VCS = vcs	-sverilog +v2k			\
					-timescale=1ns/1ps 	\
					-full64							\
					-fsdb								\
					-debug_all			    \
					+notimingcheck			\
					-P /opt/Synopsys/Verdi2015/share/PLI/VCS/LINUXAMD64/novas.tab \
					/opt/Synopsys/Verdi2015/share/PLI/VCS/LINUXAMD64/pli.a        \
					+vcs+flush+all			\
	  				+vcd+vcdpluson      \
					-f $(filelist)   \
					-o ${OUTPUT}   \
					-l compile.log   \
	  				$(ALL_DEFINE)       \
					$(LIB_FILE)			\
					

#simulation command
SIM = 	./${OUTPUT} 			\
			-l ${OUTPUT}.log 			\
			${VPD_NAME} 			\
			-cm line+cond+fsm+tgl			\

#start compile
com:
	${VCS} 

#start simulation
sim:
	${SIM} 

#start debug command
debug:
	dve -vpd ${OUTPUT}.vpd &

#start verdi
verdi:	
	# netlist simulation for master
	 # verdi +v2k -sverilog -top ${tb_master} -nologo -f $(filelist) -ssf tb_spi_master.fsdb &
	
	# netlist simulation for slave
	  verdi +v2k -sverilog -top ${tb_slave}  -nologo -f $(filelist) -ssf tb_spi_slave.fsdb &

#show the coverage
cov:
	dve -full64 -covdir *vdb &

#clean some file
clean:
	rm -rf ./verdiLog ./novas* ./*.fsdb ./csrc  *.daidir ./csrc *.log *.vpd *.vdb simv* *.key *race.out* ${OUTPUT}  DVEfiles

