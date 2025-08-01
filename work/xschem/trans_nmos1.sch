v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -40 -110 -0 {lab=vg}
N -110 -40 -40 -40 {lab=vg}
N -110 60 120 60 {lab=GND}
N 120 -70 120 -0 {lab=vd}
N 0 -70 120 -70 {lab=vd}
N -0 0 30 0 {lab=GND}
N -0 -10 -0 0 {lab=GND}
N 30 -40 30 -0 {lab=GND}
N 0 -40 30 -40 {lab=GND}
N 0 -10 0 60 {lab=GND}
N -20 60 -20 80 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 -40 0 0 {name=M1
L=1.0
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -110 30 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 120 30 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -20 80 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -490 -150 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
 OP
 DC Vds 0 1.8 0.1 Vgs 0.4 1.0 0.1


.ENDC
"}
C {lab_pin.sym} -110 -30 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_pin.sym} 30 -70 1 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/code.sym} -310 830 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code.sym} -480 60 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
