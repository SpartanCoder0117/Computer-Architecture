setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Alejandro/Desktop/5to semestre/Arquitectura de Computadoras/compuertas00/simcpmpuertas/simcpmpuertas.adf"]} { 
	design create simcpmpuertas "C:/Users/Alejandro/Desktop/5to semestre/Arquitectura de Computadoras/compuertas00"
  set newDesign 1
}
design open "C:/Users/Alejandro/Desktop/5to semestre/Arquitectura de Computadoras/compuertas00/simcpmpuertas"
cd "C:/Users/Alejandro/Desktop/5to semestre/Arquitectura de Computadoras/compuertas00"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Alejandro/Desktop/5to semestre/Arquitectura de Computadoras/compuertas00/compuertas00.vhdl"
vlib "C:/Users/Alejandro/Desktop/5to semestre/Arquitectura de Computadoras/compuertas00/simcpmpuertas/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Alejandro/Desktop/5to semestre/Arquitectura de Computadoras/compuertas00/compuertas00.vhdl"
entity compuertas00
vsim  +access +r compuertas00   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
