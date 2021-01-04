
difference(){
    rotate([-10 ,0,0]){
        difference(){
            cube([100,20,15]){}
            rotate([10,0,0]){
                translate([-2,6,4.95]){
                    cube([302,12,18]){}
                }
            }
            rotate([10,0,0]){
                translate([-2,0,-18]){
                    cube([302,24,18]){}
                }
            }
        }
    }
    // here come the steps
    translate([-1,10,4]){
                cube([302,6 ,1]){}
    }
    translate([-1,15,3]){
                cube([302,3,2]){}
    }
}