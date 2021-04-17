pole_diameter = 7.8;
pole_depth = 33.0;
wall_thickness = 0.2;


translate([0,0,38]) rotate([0,180,0]) union(){
    translate([0,0,pole_depth-16.0]) difference()
    {
        sphere(25.0, $fn=200);
        translate([-30,-30,-pole_depth+3]) cube([60.0, 60.0, 45.0]);
        translate([-30,-30,pole_depth-12]) cube([60.0, 60.0, 20.0]);
        sphere(20.0, $fn=200);
    }
    difference() {
        pole_radius = pole_diameter/2.0;
        cylinder(pole_depth+4.0, r=pole_radius+1.0+wall_thickness, $fn=200);        
        translate([0,0,-1]) cylinder(pole_depth-7.0+4.0, r=pole_radius+wall_thickness, $fn=200);
    }
    translate([-0.5,-15.0,pole_depth-1]) cube([1.0, 30.0, 4.0]);
    rotate([0,0,90]) translate([-1,-15.0,pole_depth-1]) cube([1.0, 30.0, 4.0]);
}