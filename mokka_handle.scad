union(){
    difference(){
        cube([20,30,2]){}
        translate(v=[5,15,-1]){
            cylinder(r=10, h=10){}
        }
    }
    translate(){
        cube([5,]){}
    }
}