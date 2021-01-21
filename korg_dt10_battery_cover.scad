include <lib/roundedcube.scad>

length = 54.5;
width = 21.0;
thickness = 3.0;

first_lip_width = 15.0;
first_lip_length = 3.0;
second_lip_width = 10.5;
second_lip_length = 4.5;

union(){
 roundedcube([length, width, thickness], false, 1, "z");
 translate([length, width/2-first_lip_width/2, 0]) cube([first_lip_length, first_lip_width, thickness]);
 translate([length+first_lip_length, width/2-second_lip_width/2, 0]) cube([second_lip_length, second_lip_width, thickness]);
}