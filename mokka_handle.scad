l = 20; w = 2.5; h = 0.1; 

a=[[0,0],[90,0],[70,50],[30,50]]; 
b=[[22.5,15],[70,15],[62.5,35],[35,35]]; 
c=[[0,0],[10,0],[15,15],[-2.5,15]]; 

difference(){    
    union(){
        difference() {
            linear_extrude(4.5) polygon(a);
            translate([0,0,-0.1]){
                linear_extrude(6) polygon(b);
            }
        }
        linear_extrude(4.5) polygon(c);
    }
    translate([-1,-0.1,-0.1]){cube([6.5,1.6,4.7]){}}
    translate([2.5,7,-0.1]){cylinder(r=1.6, h=5, $fn=200);}
    translate([10,4,-0.1]){cylinder(r=1.6, h=5, $fn=200);}
}