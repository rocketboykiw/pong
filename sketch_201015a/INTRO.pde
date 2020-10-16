void intro() {



  background(0);
  fill (0, 255, 0);
 stroke(0);
  strokeWeight(5);
  rect (60, 250, 10, 100);
  rect (740, 250, 10, 100);
 circle(x, y, id);
  stroke(0, 255, 0);
 
  if (mouseX > 300 && mouseX < 500 && mouseY > 420 && mouseY <520) {
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
    fill(0);
    rect(300, 420, 200, 100);
    fill (0, 255, 0);
    textSize(40);
    text("PLAY", 400, 470);
  //ball move
  x=x+vx1;
 
   
   
    if (x < d/2 ||x > width -d/2 ) {
    vx1 = vx1 * -1;
  }

  if (y < d/2 || y >height -d/2) {
    vy = vy * - 1;
  }

  }



  void introClicks() {
    if (mouseX > 300 && mouseX < 500 && mouseY > 420 && mouseY <520) {
      mode = GAME;
    }
  }
