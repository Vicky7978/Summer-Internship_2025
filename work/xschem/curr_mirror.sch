v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -0 30 0 {lab=#net1}
N -240 -0 -120 -0 {lab=GND}
N -240 -0 -240 110 {lab=GND}
N -240 110 160 110 {lab=GND}
N 160 0 160 110 {lab=GND}
N 70 0 160 0 {lab=GND}
N -120 30 -120 110 {lab=GND}
N 70 30 70 110 {lab=GND}
N -320 -100 -320 20 {lab=#net1}
N -320 -100 -40 -100 {lab=#net1}
N -40 -100 -40 0 {lab=#net1}
N -120 -100 -120 -30 {lab=#net1}
N -320 80 -320 110 {lab=GND}
N -320 110 -240 110 {lab=GND}
N 70 -100 70 -30 {lab=#net2}
N 70 -100 240 -100 {lab=#net2}
N 240 -100 240 20 {lab=#net2}
N 160 110 240 110 {lab=GND}
N 240 80 240 110 {lab=GND}
N -80 110 -80 130 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 50 0 0 0 {name=M1
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -320 50 2 0 {name=Iin value=50u}
C {vsource.sym} 240 50 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {gnd.sym} -80 130 0 0 {name=l1 lab=GND}
C {devices/code.sym} -600 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -650 -230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
 OP
 DC Vds 0 1.8 0.05
 PLOT abs(Vds#branch)
 AC DEC 100 100 1000
 PLOT '1/vm(Vds#branch)'
.ENDC
"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -100 0 2 0 {name=M2
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
