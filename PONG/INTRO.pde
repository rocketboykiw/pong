void intro() {


  background(0);
  fill (0, 255, 0);
  stroke(0);
  strokeWeight(5);
  rect (60, 250, 10, 100);
  rect (740, 250, 10, 100);
  circle(x, y, id);
  stroke(0, 255, 0);

  if (mouseX > 150 && mouseX < 350 && mouseY > 420 && mouseY <520) {
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
  fill(0);
  rect(150, 420, 200, 100);
  fill (0, 255, 0);
  textSize(30);
  text("1 PLAYER", 250, 470);

  if (mouseX > 450 && mouseX < 650 && mouseY > 420 && mouseY <520) {
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
  fill(0);
  rect (450, 420, 200, 100);
  fill (0, 255, 0);
  textSize(30);
  text("2 PLAYER", 550, 470);
  //ball move

  x=x+vx1;


  if (x < 80 ||x > 730 ) {
    vx1 = vx1 * -1;
  }
}



void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 420 && mouseY <520) {
    mode = GAME;
    AI =true;
  }

  if (mouseX > 450 && mouseX < 650 && mouseY > 420 && mouseY <520) {
    mode = GAME;
    AI = false;
  }
}
