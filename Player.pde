class Player {
  PVector position;
  PImage image;
  
  Player(PVector position, PImage image) {
    this.position = position;
    this.image = image;
  }
  
  public void display() {
    image(image, position.x-30, position.y-30);
  }
}
