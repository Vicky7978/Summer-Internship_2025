v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -140 20 -110 {lab=vim}
N 20 -140 280 -140 {lab=vim}
N 200 -110 200 -80 {lab=vip}
N 200 -110 280 -110 {lab=vip}
N -170 -90 -170 20 {lab=vindiff}
N -170 -150 -170 -90 {lab=vindiff}
N -170 -150 160 -150 {lab=vindiff}
N 160 -150 160 -70 {lab=vindiff}
N -50 -100 -20 -100 {lab=vindiff}
N -50 -150 -50 -100 {lab=vindiff}
N -40 -60 -20 -60 {lab=GND}
N -40 -60 -40 -10 {lab=GND}
N 20 -50 20 20 {lab=#net1}
N 20 20 200 20 {lab=#net1}
N 200 -20 200 20 {lab=#net1}
N 130 20 130 50 {lab=#net1}
N -40 -30 160 -30 {lab=GND}
N 340 -80 340 -30 {lab=GND}
N -170 80 -170 130 {lab=GND}
N 130 110 130 150 {lab=GND}
N 170 -220 170 -190 {lab=GND}
N 170 -330 170 -280 {lab=vdda}
N 170 -330 360 -330 {lab=vdda}
N 360 -330 360 -270 {lab=vdda}
N 320 -330 320 -180 {lab=vdda}
N 450 20 450 50 {lab=GND}
N 450 -120 450 -40 {lab=vout}
N 410 -120 450 -120 {lab=vout}
N 360 -210 360 -180 {lab=vib5u}
N 340 -180 360 -180 {lab=vib5u}
N 340 -180 340 -170 {lab=vib5u}
C {vcvs.sym} 20 -80 0 0 {name=E1 value=-0.5}
C {vcvs.sym} 200 -50 0 0 {name=E2 value=0.5}
C {vsource.sym} 130 80 0 0 {name=V1 value=0.9 savecurrent=false}
C {vsource.sym} -170 50 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 170 -250 0 0 {name=Vdd value=1.8 savecurrent=false}
C {isource.sym} 360 -240 0 0 {name=I1 value=5u}
C {gnd.sym} -40 -10 0 0 {name=l1 lab=GND}
C {gnd.sym} 340 -30 0 0 {name=l2 lab=GND}
C {gnd.sym} -170 130 0 0 {name=l3 lab=GND}
C {gnd.sym} 130 150 0 0 {name=l4 lab=GND}
C {gnd.sym} 170 -190 0 0 {name=l5 lab=GND}
C {capa.sym} 450 -10 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 450 50 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -170 -60 0 0 {name=p1 sig_type=std_logic lab=vindiff}
C {lab_pin.sym} 230 -140 1 0 {name=p2 sig_type=std_logic lab=vim
}
C {lab_pin.sym} 250 -110 3 0 {name=p3 sig_type=std_logic lab=vip}
C {lab_pin.sym} 240 -330 0 0 {name=p4 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 360 -190 2 0 {name=p5 sig_type=std_logic lab=vib5u}
C {devices/code.sym} -170 -310 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -810 -620 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.temp 27
.control
  save all
  save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
  save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
  save @m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[id]
  save @m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]
  save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[gm]
  op
  write TB_opa_nmos1.raw
  let imtail=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
  let iip=@m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
  let iim=@m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[id]
  let icmp=@m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[id]
  let icmm=@m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[id]

  let gmtail=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]
  let gmip=@m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]
  let gmim=@m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[gm]
  let gmcmp=@m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[gm]
  let gmcmm=@m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[gm]

  let gmidtail=gmtail/imtail
  let gmidip=gmip/iip
  let gmidim=gmim/iim
  let gmidcmp=gmcmp/icmp
  let gmidcmm=gmcmm/icmm

  print gmidtail
  print gmidip
  print gmidim
  print gmidcmp
  print gmidcmm

  AC DEC 100 1 1e9
  set appendwrite
  write mic1_opa_nmos.raw
.endc

"}
C {amp.sym} 80 -260 0 0 {name=x1}
C {lab_wire.sym} 450 -70 0 0 {name=p6 sig_type=std_logic lab=vout}
