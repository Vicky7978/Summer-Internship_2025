v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 -80 -120 -50 {lab=#net1}
N -120 -80 140 -80 {lab=#net1}
N 60 -50 60 -20 {lab=#net2}
N 60 -50 140 -50 {lab=#net2}
N -310 -30 -310 80 {lab=#net3}
N -310 -90 -310 -30 {lab=#net3}
N -310 -90 20 -90 {lab=#net3}
N 20 -90 20 -10 {lab=#net3}
N -190 -40 -160 -40 {lab=#net3}
N -190 -90 -190 -40 {lab=#net3}
N -180 -0 -160 -0 {lab=GND}
N -180 0 -180 50 {lab=GND}
N -120 10 -120 80 {lab=#net4}
N -120 80 60 80 {lab=#net4}
N 60 40 60 80 {lab=#net4}
N -10 80 -10 110 {lab=#net4}
N -180 30 20 30 {lab=GND}
N 200 -20 200 30 {lab=GND}
N -310 140 -310 190 {lab=GND}
N -10 170 -10 210 {lab=GND}
N 30 -160 30 -130 {lab=GND}
N 30 -270 30 -220 {lab=#net5}
N 30 -270 220 -270 {lab=#net5}
N 220 -270 220 -210 {lab=#net5}
N 180 -270 180 -120 {lab=#net5}
N 340 60 340 100 {lab=GND}
N 280 -60 340 -60 {lab=#net6}
N 340 -60 340 -0 {lab=#net6}
N 270 -60 280 -60 {lab=#net6}
N 220 -150 220 -110 {lab=#net7}
N 200 -110 220 -110 {lab=#net7}
C {vcvs.sym} -120 -20 0 0 {name=E1 value=-0.5}
C {vcvs.sym} 60 10 0 0 {name=E2 value=0.5}
C {vsource.sym} -10 140 0 0 {name=V1 value=0.9 savecurrent=false}
C {vsource.sym} -310 110 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 30 -190 0 0 {name=Vdd value=1.8 savecurrent=false}
C {isource.sym} 220 -180 0 0 {name=I0 value=1m}
C {gnd.sym} -180 50 0 0 {name=l1 lab=GND}
C {gnd.sym} 200 30 0 0 {name=l2 lab=GND}
C {gnd.sym} -310 190 0 0 {name=l3 lab=GND}
C {gnd.sym} -10 210 0 0 {name=l4 lab=GND}
C {gnd.sym} 30 -130 0 0 {name=l5 lab=GND}
C {capa.sym} 340 30 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 100 0 0 {name=l6 lab=GND}
C {amp.sym} -60 -200 0 0 {name=x1}
