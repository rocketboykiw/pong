void game() {
  background(0);


  // drawpaddles
  strokeWeight(5);
  stroke(0, 255, 0);
  fill(0);
  circle(leftx, lefty, leftd); 
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (AI == false) {
    if (upkey ==true) righty = righty - 5;
    if (downkey == true) righty = righty +5;
  } else {

    if (ballx > 400) {
      if (bally > righty) { 
        righty = righty+5;
      }
      if (bally <  righty) {
        righty = righty-5;
      }
    }
  }


  if (lefty < 150) {
    lefty = 150;
  }
  if (lefty > 450) {
    lefty = 450;
  }
  if (righty < 150) {
    righty = 150;
  }
  if (righty > 450) {
    righty = 450;
  }
  //ball
  stroke(0, 255, 0);
  fill(0, 255, 0);
  circle(x, y, d);

  // ball move
  if (timer <0 ) {
    x=x+vx;
    y=y+vy;
  }

  //ball bounce
  if (dist(leftx, lefty, x, y) <= leftd/2 +d/2) {
    vx=(x-leftx)/16;
    vy=(y-lefty)/16;
  }
  if (dist(rightx, righty, x, y) <= rightd/2 +d/2) {
    vx=(x-rightx)/13;
    vy=(y-righty)/13;
  }
  //score
  textSize(50);
  fill(0, 255, 0);
  text ( +rscore, 470, 50);
  text ( +lscore, 330, 50);

  timer = timer - 1;
  if (x < 0) {
    rscore ++;
    x= width/2;
    y= height/2;
    timer =100;
  }

  if (x>width) {
    lscore++;
    x= width/2;
    y= height/2;
    timer = 100;
  }

  //wall
  if (y < d/2 || y >height -d/2) {
    vy = vy * - 1;
  }


  //pause
  fill(0);
  // stroke(0,255,0);
  //strokeWeight(5);
  if (dist(mouseX, mouseY, 400, 50)<d/2) {
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
  circle(400, 50, 50);
  fill(0, 255, 0);
  strokeWeight(1);
  rect(390, 40, 5, 20);
  rect(405, 40, 5, 20);


  if (lscore == 11) {
    mode = GAMEOVER;
  }
  if (rscore == 11) {
    mode = GAMEOVER1;
  }
}





void gameClicks() {
  if (dist(mouseX, mouseY, 400, 50)<d/2) {
    mode = PAUSE;
  }
}
