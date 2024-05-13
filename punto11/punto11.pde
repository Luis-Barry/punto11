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
  background(255);
  //angulo de vision enemigo
  arc(width/2+30, height/2, width, height, -PI/6, PI/6);
  
  player.position.x = mouseX;
  player.position.y = mouseY;
  player.display();
  enemy.display();
  
  line(enemy.position.x+30, enemy.position.y, player.position.x, player.position.y);

  enemy.detectarPlayer(player);
  enemy.disparar();
}
