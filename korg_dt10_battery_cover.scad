include <lib/roundedcube.scad>

length = 54.5;
width = 21.0;
thickness = 3.0;

first_lip_width = 15.0;
first_lip_length = 3.0;

second_lip_width = 10.5;
second_lip_length = 2.5;
second_lip_thickness = 1.5;

back_lip_width = 7.0;
back_lip_length = 2.0;
back_lip_thickness = 1.0;

 union(){
  // main body
  roundedcube([length, width, thickness], false, 1, "z");
  // first lip
  translate([length, width/2-first_lip_width/2, 0]) cube([first_lip_length, first_lip_width, thickness]);
  // second lip solid_back
  translate([length+first_lip_length, width/2-second_lip_width/2, 0]) cube([second_lip_length/2, second_lip_width, second_lip_thickness]);
  // second lip solid_back
  translate([length+first_lip_length, width/2-second_lip_width/2, 0]) cube([second_lip_length, second_lip_width, second_lip_thickness/2]);
  // second lip rounded
  translate([length+first_lip_length, width/2-second_lip_width/2, 0]) roundedcube([second_lip_length, second_lip_width, second_lip_thickness], false, 0.5, "y");
  //back lip
  translate([-back_lip_length,width/2-back_lip_width/2,thickness - back_lip_thickness]) cube([back_lip_length, back_lip_width, back_lip_thickness]);
 }