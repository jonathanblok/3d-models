include <lib/cyl_head_bolt.scad>;

rotate([0,180,0]) difference() {
    cube([30.0,30.0,20.0]);
    translate([15.0,15.0,6.2]) nutcatch_parallel("M8", clh=1);
    translate([15.0,15.0,6.2]) cylinder(d=8.2, h=25.0, $fn=200);
}
