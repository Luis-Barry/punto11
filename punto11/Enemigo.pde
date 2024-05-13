class Enemigo extends Player{
  float vision;
  Player target;
  PImage fireballImage;
  
  Enemigo(PVector position, PImage image, float vision, PImage fireballImage) {
    super(position, image);
    this.vision = vision;
    this.fireballImage = fireballImage;
  }
 
  public void disparar() {
    float angle = degrees(PVector.angleBetween(new PVector(1, 0), PVector.sub(target.position, position)));
    if (angle < vision/1.5) {
      image(fireballImage, position.x + 50, position.y);
    }
  }
}
