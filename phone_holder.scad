overall_width = 70.0;
inside_width = 63.0;
inside_depth = 11.0;
base_height = 10.0;
overall_height = 60.0;
forward_depth = 24.0;

wall_thickness = 0.5;

union(){
    // Top part and arm
    difference() {
        cube([10,overall_width,20]){}
        diff_inner_outer = overall_width - inside_width;
        offset_comp_inner_outer = diff_inner_outer / 2.0;
        //translate([0,offset_comp_inner_outer,-2]) cube([10,inside_width,20]){}
    }
    
    // "Hands" 
    translate([forward_depth-3.0,10.0,0.0]) cube([3.0,4.0,2*base_height]);
    translate([forward_depth-3.0,overall_width-4.0,0]) cube([3.0,4.0,2*base_height]);
    
    // Main T-shape
    difference(){
     union(){
      cube([forward_depth,10.0,20.0]){}
      translate([0,overall_width,0]) cube([forward_depth,10,20]){}    
      translate([0,30,0]) cube([10,20,overall_height]){}
     }
     // subtract phone
     translate([10.0,8.75,0]) cube([inside_depth, inside_width, 60]){}
    }
    
    // back block insert 
    difference(){        
        bb_width = 30;
        slot_width = 3;
        union(){
            translate([-30,25,0]) cube([40,bb_width,10]){}    
            translate([-30,25,10]) cube([2,bb_width,2]){}    
        }
        translate([-31,25+bb_width/2-slot_width/2,-1]) cube([40,slot_width,15]){}    
    }
    
    // foot
    difference(){
        translate([0,30,overall_height]){
           cube([10.0+inside_depth,20,3]){}
        }
        translate([inside_depth,32.5,overall_height-1]){
            cube([7,15,5]){}
        }
    }
} 
