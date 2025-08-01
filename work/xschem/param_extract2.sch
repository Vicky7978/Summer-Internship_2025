v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -0 -140 150 {lab=GND}
N -140 150 170 150 {lab=GND}
N -0 -30 170 -30 {lab=GND}
N 170 -30 170 -10 {lab=GND}
N 170 -10 170 150 {lab=GND}
N -140 -140 -140 -60 {lab=vgds}
N -140 -140 -0 -140 {lab=vgds}
N 0 -140 0 -60 {lab=vgds}
N -70 -30 -40 -30 {lab=vgds}
N -70 -140 -70 -30 {lab=vgds}
N -0 0 -0 80 {lab=#net1}
N 0 140 0 150 {lab=GND}
N -40 150 -40 170 {lab=GND}
C {vsource.sym} -140 -30 0 0 {name=Vds value=1 savecurrent=false}
C {vsource.sym} 0 110 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} -40 170 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -140 -130 0 0 {name=p1 sig_type=std_logic lab=vgds}
C {simulator_commands_shown.sym} -530 -150 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC Vds 0 1.8 0.05 Vsb 0 0.5 0.1
PLOT abs(vds#branch)
PLOT sqrt(2*abs(vds#branch))
.ENDC

"}
C {devices/code.sym} -520 60 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8.sym} -20 -30 0 0 {name=M2
L=1
W=4
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
