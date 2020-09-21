fin_thickness = 5;
top_extruder_width = 80;
inner_toplayer_width = 73;
toplayer_height = 3;
can_radius = 35.5; // 1mm to spare
lower_body_height = 75;
top_part_length = 155;
back_part_length = 145;
profile = 0.2;

rotate(a=[0,180,0]){
    translate(v=[0,0,-6]){
        union() {
            difference() {
                union() {
                    // this is the main body
                    cube([inner_toplayer_width,top_part_length,toplayer_height]);
                    translate(v=[0,0,toplayer_height]){
                        // this is on top of the main body
                        // intended to go over the edge 
                        cube([top_extruder_width,top_part_length,toplayer_height]);
                    }
                    translate(v=[0,62.5,-lower_body_height]){
                        // center reinforcement fin
                        cube([fin_thickness,30,lower_body_height]);
                    }
                    translate(v=[0,10,-lower_body_height]){
                        // left reinforcement fin
                        cube([fin_thickness,10,lower_body_height]);
                    }
                    translate(v=[0,back_part_length,-lower_body_height]){
                        // right reinforcement fin
                        cube([fin_thickness,10,lower_body_height]);
                    }
                }
                translate(v=[36.5, 37.75, -180]){
                    cylinder(r=can_radius+2*profile, h=200, $fn=200);    
                }
                translate(v=[36.5,113.25, -180]){
                    cylinder(r=can_radius+2*profile, h=200, $fn=200);    
                }
            }
            translate(v=[0,10,-75]){
                    // the long cube on the back
                    // TODO: need to add something
                    // so it cannot move from front
                    // to back.
                    cube([1,back_part_length,30]);
                }
        }
    }
}