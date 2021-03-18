include <lib/cyl_head_bolt.scad>;

rotate([0.0 ,180.0 ,0.0]) difference() {
    cube([30.0,30.0,20.0]);
    translate([2.0,2.0,0.0]) nutcatch_parallel("M7", clh=0.1);
    translate([2.0,2.0,0.5]) nutcatch_parallel("M7", clh=0.1);
    translate([2.0,2.0,0]) cylinder(d=0.8, h=30.0, $fn=200);
}