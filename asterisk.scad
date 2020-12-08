cube_x = 5;
cube_y = 20;
cube_z = 4;

module asterisk() {
    linear_extrude(4) text(text = "*", size = 35);
};



difference(){
    cube([400,200,2]);
    rotate([0,0,23]) translate([110,100,-1]) asterisk();
    rotate([0,0,2]) translate([100,25,-1]) asterisk();
    rotate([0,0,40]) translate([190,-110,-1]) asterisk();
    translate([190,120,-1]) asterisk();
    translate([330,150,-1]) asterisk();
    rotate([0,0,0]) translate([160,70,-1]) asterisk();
    rotate([0,0,-20]) translate([280,160,-1]) asterisk();
}
