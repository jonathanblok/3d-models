overall_width = 100;
base_height = 10;
overall_height = 100;

union(){
    cube([10,overall_width,20]){}
    cube([40,10,20]){}
    translate([0,overall_width,0]) cube([40,10,20]){}    
    
    translate([0,35,0]) cube([10,40,overall_height]){}
    
    
    // back block insert 
    difference(){        
        bb_width = 40;
        slot_width = 3;
        union(){
            translate([-30,35,0]) cube([40,bb_width,10]){}    
            translate([-30,35,10]) cube([2,bb_width,2]){}    
        }
        translate([-31,35+bb_width/2-slot_width/2,-1]) cube([40,slot_width,15]){}    
    }
    
    difference(){
        translate([0,35,overall_height]){
           cube([20,40,3]){}
        }
        translate([11,45,overall_height-1]){
            cube([5,20,5]){}
        }
    }
}