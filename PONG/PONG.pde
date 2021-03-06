import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pong!
//jon boykiw
//1.1
//oct 15,2020



//mode framework
int mode;
final int INTRO =1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int GAMEOVER1 = 5;
//entity variables
float leftx,lefty,leftd,rightx,righty,rightd;//paddles
float ballx,bally,balld;//ball
int rscore,lscore,timer;
boolean AI;
//keyboard variables
boolean wkey,skey,upkey,downkey;

//sound
Minim minim;
AudioPlayer pong,dong,win;


//target variables
float x,y,d;
float vx,vy,vx1,vx2;
float id;
void setup(){
size (800,600);
 mode = INTRO;
 textAlign(CENTER,CENTER);
 
 
//initalize paddles
leftx = 0;
lefty = height/2;
leftd = 150;

rightx =  width;
righty = height/2;
rightd = 150;

//initalize ball
rscore =0;
lscore =0;
timer=100;
id = 20;
x = width/2;
y = height/2;
d = 50;
vx = 6;
vy = 6;
vx1 =3;

//initalize keyboard
wkey = skey = upkey = downkey = false;



//minim
minim = new Minim(this);
pong = minim.loadFile("pong.wav");
dong = minim.loadFile("dong.wav");
win = minim.loadFile("win.mp3");
}

void draw(){
  if (mode ==INTRO) {
  intro();
  }else if (mode == GAME){
  game();
  }else if (mode == PAUSE){
  pause();
  }else if (mode == GAMEOVER){
  GAMEOVER();
  }else if (mode == GAMEOVER1){
  GAMEOVER1();
  }else{
   println("mode error:" + mode);
  }

}
