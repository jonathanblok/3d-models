z_dim = 30;

union(){
    cube([45,20,z_dim]) {} // back support
    cube([10,50,z_dim]) {} // bottom arm
    translate([35,0,0]){
        cube([10,47,z_dim]) {} // top arm
    }
    translate([35,47,0]){
        cube([60,3,z_dim]) {} // paper_shield
    }
}