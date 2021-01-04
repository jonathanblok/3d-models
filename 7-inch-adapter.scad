filament_profile = 0.2;
center_radius = 3.5;
outer_radius = 18.9;

difference(){
    cylinder(h=8,r=outer_radius, $fn=200);
    translate(v = [0,0,6]){
        cylinder(h=3,r=9.85, $fn=200);
    };
    translate(v=[0,0,-1]){
        cylinder(h=8, r=(center_radius + 2 * filament_profile), $fn=200);
    }
}
