void pause(){
stroke (0,255,0);
strokeWeight(5);
rect (340,200,50,200);
rect (420,200,50,200);

 if (dist(mouseX, mouseY, 400, 50)<d/2) {
    strokeWeight(5);
  } else {
     strokeWeight(1);
  }

stroke(0,255,0);
fill(0);
circle(400,50,50);
fill(0);
strokeWeight(1);
triangle(390,30,390,70,420,50);
}

void pauseClicks(){
  if(dist(mouseX,mouseY,400,50)<d/2){
 mode = GAME; 
  }
}
