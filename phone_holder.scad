overall_width = 70.0;
inside_width = 63.0;
inside_depth = 0.0;
base_height = 10.0;
overall_height = 100.0;

union(){
    // Top part and arm
    difference() {
        cube([10,overall_width,20]){}
        diff_inner_outer = overall_width - inside_width;
        offset_comp_inner_outer = diff_inner_outer / 2.0;
        //translate([0,offset_comp_inner_outer,-2]) cube([10,inside_width,20]){}
    }
    
    // "Hands" 
    cube([0,0,0]);
    
    // Main T-shape
    cube([40,10,20]){}
    translate([0,overall_width,0]) cube([40,10,20]){}    
    translate([0,30,0]) cube([10,20,overall_height]){}
    
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
    
    difference(){
        translate([0,30,overall_height]){
           cube([25,20,3]){}
        }
        translate([15,32.5,overall_height-1]){
            cube([7,15,5]){}
        }
    }
} 
