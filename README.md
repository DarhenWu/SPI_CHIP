
* doc - SPI相关参考文档（主要参考的是simple_spi.pdf）
* FDRY - 存放.db格式基本单元工艺库
* FUNC_SIM - 前仿文件夹 - makefile和pre_filelist.f为主要文件： 打开终端 - make com - make sim -make verdi 可查看波形（前仿用VCS跑会有bug）
* LIB - 存放带延时信息的.v格式的基本单元库，用于网表仿真
* pictures - 报告中的图片
* POST_SIM - 内包含 AfterDC和AfterPR两个文件夹，分别是综合后仿真和布局布线后仿真的文件夹，具体指令与前仿一致，结果正确（文件夹内包含的是已仿真后的结果，可以先执行make clean）
* PR - 后端相关文件
* ref_design - Richard Herveille先生的Simple SPI Core项目，可直接参考
* RTL - 存放设计代码
* rtl_drop - 项目过程中使用的一些测试代码，保留做纪念，无实际用处
* SYN - 包含DC和FM两个文件夹，分别是DC综合和FM形式验证的文件夹。DC指令为dc_shell-t -f compile_dc.tcl ，DC中OUT为综合输出网表，RPT为时序面积功耗等报告。v1、v2、v3分别对应tt、ss、ff工艺脚
* testbench - 存放tb代码，主模式和从模式分开测试，故使用时注意所选tb。
* SPI_SPEC_REPORT - 即是使用文档，也是项目报告。
  
README_ME结束，项目详情见SPI_SPEC_REPORT.md
