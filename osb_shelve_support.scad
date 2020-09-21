cbeam_height = 27;
cbeam_width = 44;
cbeam_support_thickness = 5;
cbeam_support_depth = 10;
leg_support_width = 0;
leg_support_height = 0;

union(){
    difference() {
        cube([cbeam_width + cbeam_support_thickness,
        cbeam_support_depth,
        cbeam_height + cbeam_support_thickness]);
        translate(cbeam_support_thickness, cbeam_support_thickness, 0){
            cube([cbeam_width,
            cbeam_support_depth+10,
            cbeam_height]);
        }
    }
}
