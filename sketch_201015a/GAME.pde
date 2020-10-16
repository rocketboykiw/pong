void game() {
  background(0);


  // drawpaddles
  strokeWeight(5);
  stroke(0, 255, 0);
  fill(0);
  circle(leftx, lefty, leftd); 
  stroke(255, 0, 0);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey ==true) righty = righty - 5;
  if (downkey == true) righty = righty +5;

  //ball
  stroke(0, 255, 0);
  fill(0, 255, 0);
  circle(x, y, d);

  // ball move
  x=x+vx;
  y=y+vy;

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
    fill(255,0,0);
  text ( +rscore, 420, 50);
   fill(0,255,0);
  text ( +lscore, 320, 50);

  if (x<0) {
    rscore ++;
    x= width/2;
    y= height/2;
  }

  if (x>width) {
    lscore++;
    x= width/2;
    y= height/2;
  }

  //wall
  if (y < d/2 || y >height -d/2) {
    vy = vy * - 1;
  }
}



void gameClicks() {
}
