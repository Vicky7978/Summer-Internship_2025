v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 40 -110 100 {lab=GND}
N -110 -40 -110 -20 {lab=vnmic}
N -110 -40 -20 -40 {lab=vnmic}
N 40 -40 100 -40 {lab=vn1}
N 160 -40 210 -40 {lab=vn2}
N 270 -40 320 -40 {lab=virt}
N 320 -40 350 -40 {lab=virt}
N 350 -40 380 -40 {lab=virt}
N 330 -170 380 -170 {lab=virt}
N 330 -240 380 -240 {lab=virt}
N 330 -240 330 -170 {lab=virt}
N 440 -170 480 -170 {lab=vout}
N 480 -170 490 -170 {lab=vout}
N 440 -240 490 -240 {lab=vout}
N 330 -170 330 -130 {lab=virt}
N 330 -130 330 -40 {lab=virt}
N 380 110 380 160 {lab=GND}
N 750 70 750 180 {lab=GND}
N 380 -40 470 -40 {lab=virt}
N 490 -240 510 -240 {lab=vout}
N 380 -10 380 50 {lab=vcm}
N 380 -10 470 -10 {lab=vcm}
N 750 -20 750 10 {lab=vout}
N 470 -40 550 -40 {lab=virt}
N 470 -10 550 -10 {lab=vcm}
N 680 -20 750 -20 {lab=vout}
N 490 -170 700 -170 {lab=vout}
N 700 -170 700 -20 {lab=vout}
N 510 -240 510 -170 {lab=vout}
N 660 -200 660 -70 {lab=Vib5u}
N 610 -70 660 -70 {lab=Vib5u}
N 590 -300 590 -80 {lab=AVDD}
N 590 -300 780 -300 {lab=AVDD}
N 780 -300 780 -260 {lab=AVDD}
N 660 -300 660 -260 {lab=AVDD}
N 780 -200 780 -130 {lab=GND}
N 610 20 610 90 {lab=GND}
C {vsource.sym} -110 10 0 0 {name=Vmic value="0 AC 1 sin(0 10m 1e3 0 0 0)" savecurrent=false}
C {res.sym} 10 -40 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} 240 -40 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} 130 -40 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -110 100 0 0 {name=l1 lab=GND}
C {vsource.sym} 380 80 0 0 {name=V2 value=1.5 savecurrent=false}
C {capa.sym} 410 -240 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 410 -170 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 750 40 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 380 160 0 0 {name=l2 lab=GND}
C {gnd.sym} 610 90 0 0 {name=l3 lab=GND}
C {gnd.sym} 750 180 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -60 -40 1 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_pin.sym} 70 -40 1 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_pin.sym} 190 -40 1 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_pin.sym} 380 30 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 750 -10 2 0 {name=p5 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} 970 -320 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
  save all
  op
  write micTest_opa.raw
  set appendwrite
  AC DEC 100 0.1 10e6
  write micTest_opa.raw
  **
  MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO=10e6
  LET vm3db = gain_db - 3.0
  print vm3db
  MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
  MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
  **MEAS AC fmid  WHEN vdb(vout)=gain_db
  **Phase Measurement
  LET phase_deg = cph(vout)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
  **MEAS AC phase_mid  FIND phase_deg AT=fmid
  ** MEAS fero fpole using phase
  **LET phase_zero_ph = phase_mid-45
  **MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
  **
  TRAN 1u 6m
  MEAS TRAN voutpp PP v(vout) FROM=1m TO=4m
  MEAS TRAN vinpp PP v(vnmic) FROM=1m TO=4m
  LET gaintran=voutpp/vinpp
  print gaintran
  FOURIER 1k v(vout)
  plot v(vout)
  plot v(vnmic)
  
.ENDC
"}
C {amp.sym} 350 -160 0 0 {name=x1}
C {vsource.sym} 780 -230 0 0 {name=V1 value=3 savecurrent=false}
C {isource.sym} 660 -230 0 0 {name=I0 value=1m}
C {gnd.sym} 780 -130 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 330 -120 0 0 {name=p6 sig_type=std_logic lab=virt}
C {lab_pin.sym} 590 -270 0 0 {name=p7 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 660 -130 0 0 {name=p8 sig_type=std_logic lab=Vib5u}
C {devices/code.sym} 110 -260 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
