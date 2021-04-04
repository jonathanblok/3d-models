union(){
    difference()
    {
        sphere(25.0, $fn=200);
        translate([-30,-30,-30]) cube([60.0, 60.0, 30.0]);
        sphere(20.0, $fn=200);
    }
    difference() {
        cylinder(20.0, r=5.0, $fn=200);
        translate([0,0,-1]) cylinder(10.0, r=4.0, $fn=200);
    }
}