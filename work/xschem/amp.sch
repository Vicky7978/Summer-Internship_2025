v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 20 310 20 {lab=AVSS}
N 170 20 170 160 {lab=AVSS}
N 170 160 720 160 {lab=AVSS}
N 620 20 720 20 {lab=AVSS}
N 720 20 720 160 {lab=AVSS}
N 350 20 580 20 {lab=1b5u}
N 310 50 310 160 {lab=AVSS}
N 620 50 620 160 {lab=AVSS}
N 150 -90 430 -90 {lab=1b5u}
N 430 -90 430 20 {lab=1b5u}
N 310 -90 310 -10 {lab=1b5u}
N 70 160 170 160 {lab=AVSS}
N 470 -380 630 -380 {lab=vom}
N 670 -350 670 -230 {lab=vop}
N 430 -350 430 -220 {lab=vom}
N 430 -440 430 -410 {lab=AVDD}
N 430 -440 670 -440 {lab=AVDD}
N 670 -440 670 -410 {lab=AVDD}
N 430 -170 430 -130 {lab=#net1}
N 430 -130 670 -130 {lab=#net1}
N 670 -180 670 -130 {lab=#net1}
N 230 -440 430 -440 {lab=AVDD}
N 300 -200 390 -200 {lab=vinp}
N 710 -200 750 -200 {lab=vinm}
N 670 -290 750 -290 {lab=vop}
N 430 -310 590 -310 {lab=vom}
N 590 -380 590 -310 {lab=vom}
N 620 -130 620 -10 {lab=#net1}
N 430 -200 490 -200 {lab=#net1}
N 490 -200 670 -200 {lab=#net1}
N 570 -200 570 -130 {lab=#net1}
N 340 -380 430 -380 {lab=AVDD}
N 340 -440 340 -380 {lab=AVDD}
N 670 -380 750 -380 {lab=AVDD}
N 750 -440 750 -380 {lab=AVDD}
N 670 -440 750 -440 {lab=AVDD}
C {iopin.sym} 750 -290 0 0 {name=p1 lab=vop
}
C {iopin.sym} 300 -200 0 1 {name=p6 lab=vinp}
C {iopin.sym} 750 -200 0 0 {name=p7 lab=vinm}
C {sky130_fd_pr/nfet_01v8.sym} 600 20 0 0 {name=Mtail
L=1
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 330 20 0 1 {name=M1
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 150 -90 0 1 {name=p2 lab=1b5u}
C {iopin.sym} 70 160 0 1 {name=p3 lab=AVSS}
C {sky130_fd_pr/pfet_01v8.sym} 650 -380 0 0 {name=Mpcmm
L=2
W=5
nf=1 mult=2
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 450 -380 0 1 {name=Mpcmp
L=2
W=5
nf=1 mult=2
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 690 -200 0 1 {name=Mim
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 410 -200 0 0 {name=Mip
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 230 -440 0 1 {name=p4 lab=AVDD}
C {lab_wire.sym} 430 -270 0 0 {name=p8 sig_type=std_logic lab=vom}
C {simulator_commands_shown.sym} -40 -340 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
save all
write amp.raw
set appendfile
write amp.raw

.endc
"}
C {devices/code.sym} -150 -110 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
