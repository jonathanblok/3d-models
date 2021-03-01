include <lib/cyl_head_bolt.scad>;

rotate([0,180,0]) difference() {
    cube([4,4,2]);
    translate([2,2,0]) nutcatch_parallel("M7", clh=0.1);
    translate([2,2,0.5]) nutcatch_parallel("M7", clh=0.1);
    translate([2,2,0]) cylinder(d=0.8, h=10, $fn=200);
}