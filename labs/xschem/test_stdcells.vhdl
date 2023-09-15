entity test_stdcells is
end test_stdcells ;

architecture arch_test_stdcells of test_stdcells is


signal A : std_logic ;
signal B : std_logic ;
signal Q : std_logic ;
signal CLK : std_logic ;
signal net1 : std_logic ;
signal XSCHEM : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal X : std_logic ;
signal net4 : std_logic ;
signal Qlatch : std_logic ;
signal Y : std_logic ;
signal RESET_B : std_logic ;
signal 0 : std_logic ;
begin

V1 : sqwsource
generic map (
   vhi => 1.8 ,
   freq => 0.09E9
);


V2 : sqwsource
generic map (
   vhi => 1.8 ,
   freq => 0.02E9
);

C1 : parax_cap
generic map (
   gnd => 0 ,
   value => 3.0e-15 ,
   m => 1
)
port map (
   p => X
);


V3 : sqwsource
generic map (
   vhi => 1.8 ,
   freq => 0.2E9
);


V4 : sqwsource
generic map (
   vhi => 1.8 ,
   freq => 0.7E8
);

C2 : parax_cap
generic map (
   gnd => 0 ,
   value => 3.0e-15 ,
   m => 1
)
port map (
   p => Q
);

C3 : parax_cap
generic map (
   gnd => 0 ,
   value => 3.0e-15 ,
   m => 1
)
port map (
   p => Y
);

C4 : parax_cap
generic map (
   gnd => 0 ,
   value => 3.0e-15 ,
   m => 1
)
port map (
   p => Qlatch
);


.options acct list
.temp 25
vvcc vcc 0 dc 1.8
vvss vss 0 0
.control
tran 30p 80n
plot a b+2 clk+4 reset_b+6 x+8 y+10 q+12 qlatch+14
write test_stdcells.raw
.endc

.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice

end arch_test_stdcells ;

