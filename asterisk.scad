cube_x = 5;
cube_y = 20;
cube_z = 4;

module asterisk() union() {
    translate([0,0,0]){
        union(){
            cube([cube_x, cube_y, cube_z]){}
            rotate([0,0,60]) cube([cube_x, cube_y, cube_z]);
            rotate([0,0,120]) cube([cube_x, cube_y, cube_z]);
            rotate([0,0,180]) cube([cube_x, cube_y, cube_z]);
            rotate([0,0,240]) cube([cube_x, cube_y, cube_z]);
            rotate([0,0,300]) cube([cube_x, cube_y, cube_z]);
        };
    };
};

difference(){
    cube([400,200,2]);
    rotate([0,0,23]) translate([110,100,-1]) asterisk();
    rotate([0,0,2]) translate([120,65,-1]) asterisk();
    rotate([0,0,40]) translate([210,-90,-1]) asterisk();
    translate([190,150,-1]) asterisk();
    translate([330,150,-1]) asterisk();
    rotate([0,0,-20]) translate([310,160,-1]) asterisk();
}