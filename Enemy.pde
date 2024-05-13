class Enemy extends Player {
  float vision;
  Player target;
  PImage fireballImage;
  
  Enemy(PVector position, PImage image, float vision, PImage fireballImage) {
    super(position, image);
    this.vision = vision;
    this.fireballImage = fireballImage;
  }
  
  public void detectarPlayer(Player target) {
    this.target = target;
  }
  
  public void atacar() {
    if (target != null) {
      float angle = degrees(PVector.angleBetween(new PVector(1, 0), PVector.sub(target.position, position)));
      if (angle < vision/1.5) {
        // Fireball attack
        image(fireballImage, position.x + 50, position.y);
      }
    }
  }
}
