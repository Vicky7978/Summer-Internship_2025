v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -40 -110 -0 {lab=#net1}
N -110 -40 -40 -40 {lab=#net1}
N -110 60 120 60 {lab=GND}
N 120 -70 120 -0 {lab=#net2}
N 0 -70 120 -70 {lab=#net2}
N -0 0 30 0 {lab=GND}
N -0 -10 -0 0 {lab=GND}
N 30 -40 30 -0 {lab=GND}
N 0 -40 30 -40 {lab=GND}
N 0 -10 0 60 {lab=GND}
N -20 60 -20 80 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 -40 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -110 30 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 120 30 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} -20 80 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -360 -150 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
 OP

.ENDC
"}
