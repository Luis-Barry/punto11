Player player;
Enemigo enemy;

PImage playerImage;
PImage enemyImage;
PImage fireballImage;

void setup(){
  size(800, 600);
  
  playerImage = loadImage("player.png");
  enemyImage = loadImage("enemy.png");
  fireballImage = loadImage("fireball.png");
  
  player = new Player(new PVector(width/4, height/2), playerImage);
  enemy = new Enemigo(new PVector(width/2, height/2), enemyImage, 30, fireballImage);
}

void draw(){
  
}
