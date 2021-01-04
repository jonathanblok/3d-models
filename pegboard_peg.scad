peg_width = 44;

union() {
 // upper hook
 translate([160/2-peg_width/2,0,0]) difference(){
   cylinder(h=peg_width, d=160, $fn=200);
   translate([0,0,-1]) cylinder(h=46, d=160-peg_width);
   translate([-(160/2-peg_width/2),0,-1]) cube([150,200,peg_width+2]);
 }
 
 //connector block
 translate([-(peg_width/2),0,0]) cube([peg_width/2, 440, peg_width]);
 
 //transverse block
 translate([-(peg_width/2),256,0]) cube([105, peg_width, peg_width]);

//lower hook
 translate([-(440/2),435,0]) difference(){
   cylinder(h=peg_width, d=440, $fn=200);
   translate([0,0,-1]) cylinder(h=46, d=440-peg_width);
   translate([-(440/2),-435,-1]) cube([440,435,peg_width+2]);
 }
}
