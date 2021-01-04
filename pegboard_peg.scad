peg_width = 4.4;

union() {
 // upper hook
 translate([10/2-peg_width/2,0,0]) difference(){
   cylinder(h=peg_width, d=10, $fn=200);
   translate([0,0,-1]) cylinder(h=peg_width+2, d=10-peg_width);
   translate([-(10/2-peg_width/2),0,-1]) cube([15,20,peg_width+2]);
 }
 
 //extend top hook block
 translate([peg_width+1.2,0,0]) cube([peg_width/2, 4.4, peg_width]);
 
 //connector block
 translate([-(peg_width/2),0,0]) cube([peg_width/2, 44, peg_width]);
 
 //transverse block
 translate([-(peg_width/2),20,0]) cube([10.5, peg_width, peg_width]);

//lower hook
 translate([-(44/2),43.5,0]) difference(){
   cylinder(h=peg_width, d=44, $fn=200);
   translate([0,0,-1]) cylinder(h=peg_width+2, d=44-peg_width);
   translate([-(44/2),-43.5,-1]) cube([44,43.5,peg_width+2]);
 }
}
