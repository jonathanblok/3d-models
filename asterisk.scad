post_card_x = 149;
post_card_y = 104;

cube_x = post_card_x + 10;
cube_y = post_card_y + 10;
cube_z = 1;

module asterisk() {
    linear_extrude(4) text(text = "*", size = 25);
};

difference(){
    cube([cube_x,cube_y,cube_z]);
    
    for (i = [-5 : 8]){
        for ( j = [0 : 5] ){
            translate([(i*20)+j*15,-2+j*17,-1]) asterisk();
        }    
    }
}
