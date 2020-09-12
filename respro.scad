anchorDiam = 19;
anchorInnerDiam = 16;
innerCylHeight = 6.5;
height = innerCylHeight  + 2;
anchorX = 2.25;
anchorY = 4;
anchorZ = 2.8;
outDiam = 30.72;
$fn= 120;

difference(){

//generates the main body
union(){
    
//Inner cylinder
cylinder(r = anchorDiam / 2, h = height);
    
//anchors
    translate([-anchorDiam/2-+2*anchorX/2,-anchorY/2,height-anchorZ])cube([anchorDiam+2*anchorX,anchorY,anchorZ]);

//Base (cone)
cylinder(h=(height - innerCylHeight), r1=1.5*anchorDiam/2, r2=outDiam/2, center=false);
}

//Hole
cylinder(r = anchorInnerDiam / 2, h = 5*height, center=true);
}

  translate([-0.95*anchorDiam/2,-anchorY/4,0])cube([0.95 * anchorDiam,anchorY/2,anchorZ/2]);
