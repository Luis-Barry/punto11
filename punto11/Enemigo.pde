class Enemigo extends Player{
  float vision;
  Player target;
  PImage fireballImage;
  
  Enemigo(PVector position, PImage image, float vision, PImage fireballImage) {
    super(position, image);
    this.vision = vision;
    this.fireballImage = fireballImage;
  }
}
