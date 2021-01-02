include <nutsnbolts/cyl_head_bolt.scad>;

nut_type = "M4";
base_length = 50;
base_width = 20;

difference(){
    cube([base_width,base_length,10]);
    translate([base_width/2,base_length/2,3]) nutcatch_parallel(nut_type, clh=0.1);
    translate([base_width/2,base_length/2,10]) hole_through(name="M2", l=50+5, cld=0.1, h=10, hcld=0.4);
}
rotate([90,0,0]){
    difference(){
        translate([-20,5,-35]) cylinder(h=20,r=25.0, $fn=200){}
        translate([-20,5,-36]) cylinder(h=22,r=20.0, $fn=200){}
    }
}
