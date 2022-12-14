Built in BSIMSOI Output Characteristics NGspice Simulation
.options abstol=1e-12 reltol=1e-6 temp=26.85 vntol=1e-6

VG G  0 DC 1
VD D  0 DC 1

.model mosn bsimsoi
.include bsim.lib     

N1 D G 0 0 mosn

.control
pre_osdi bsimsoi.osdi
dc VD 0 2 0.001 VG 0.5 0.8 0.001 ; 
plot -i(VD)
.endc

.end
