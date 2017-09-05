# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/VivadoProject/led_lights/led_lights.cache/wt [current_project]
set_property parent.project_path D:/VivadoProject/led_lights/led_lights.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/VivadoProject/led_lights/xilinx.com_user_ctc8_1.0 [current_project]
read_ip d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0.xci
set_property is_locked true [get_files d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0.xci]

synth_design -top ctc8_0 -part xc7a100tcsg324-1 -mode out_of_context
rename_ref -prefix_all ctc8_0_
write_checkpoint -noxdef ctc8_0.dcp
catch { report_utilization -file ctc8_0_utilization_synth.rpt -pb ctc8_0_utilization_synth.pb }
if { [catch {
  file copy -force D:/VivadoProject/led_lights/led_lights.runs/ctc8_0_synth_1/ctc8_0.dcp d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}