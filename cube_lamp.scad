outer_x = 24;
outer_y = 24;
inner_x = 20;
inner_y = 20;
outer_z = 20;

offset_x = (outer_x - inner_x) / 2;
offset_y = (outer_y - inner_y) / 2;
avg_offset = (offset_x + offset_y) / 2;

/*

*/

translate([0,0,0])
{
 rotate([0,0,0])
 {
  union()
  {
   difference(){
      cube([outer_x,outer_y,outer_z]){}
      translate([offset_x, offset_y, -1])
      {
       cube([inner_x,inner_y,outer_z - avg_offset]){}    
      }
   }
   translate([offset_x, offset_y, -outer_z]){
    cube([2*avg_offset, 2*avg_offset, outer_z * 2]){
    }
   }
  }
 }
}

/*
TODO: Add space for button
TODO: Add a locking mechanism in shaft using pinx
TODO: Add space for E14 fitting 
*/

translate([0,60,0])
{
 rotate([0,0,0])
 {
  union()
  {
   difference(){
      cube([outer_x,outer_y,outer_z]){}
      translate([offset_x, offset_y, -1])
      {
       cube([inner_x,inner_y,outer_z - avg_offset]){}    
      }
   }
   difference(){
    translate([0, 0, -outer_z]){
     cube([4*avg_offset,4*avg_offset,2*outer_z]){}
    }
    translate([1*offset_x, 1*offset_y, -outer_z-1]){
     cube([2*avg_offset, 2*avg_offset, outer_z * 2]){}
    }
   }
  }
 }
}