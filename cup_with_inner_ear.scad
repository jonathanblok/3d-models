cup_outer_radius = 80;
cup_inner_radius = 65;
bottom_thickness = 10;
height = 200;
fn_val = 200;
ear_outer_radius = 50;
ear_inner_radius = 30;
ear_height = 100;
ear_thickness = 10;

union(){
    difference(){ 
        cylinder(h=height, r=cup_outer_radius, $fn=fn_val){}
        translate([0,0,bottom_thickness]){
            cylinder(h=height, r=cup_inner_radius, $fn=fn_val){}
        }
    }  
    translate([0,50,ear_height]) {
        rotate([0,90,0]) {
            difference(){
                cylinder(h=ear_thickness, r=ear_outer_radius, $fn=fn_val){
                }
                translate([0,0,-1]){
                    cylinder(h=ear_thickness+2, r=ear_inner_radius, $fn=fn_val){
                    }
                }
                rotate([0,-90,0]){
                    translate([-50,cup_inner_radius-40,-50]){
                        cube([100,40,height-ear_height]){}
                    }
                }
            }
        }
    }    
}
