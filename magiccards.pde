// Inspiration and API: http://www.mtgcardmaker.com/

ArrayList<RealCard> hand = new ArrayList<RealCard>();
XML[] cards;
Card card1;

void setup() {
  size(800, 600);
  
  /* Generated card
  card1 = new Card(1, "Viashino Racketeer");
  card1.cardColor = "Red";
  card1.mana_r = 1;
  card1.mana_colorless=2;
  card1.cardtype="Creature";
  card1.subtype="Viashino Rogue";
  card1.picture = "http://gameover30.up.seesaa.net/image/koppa.jpg";
  card1.cardtext="When Viashino Racketeer enters the battlefield, you may discard a card. If you do, draw a card.";
  card1.power=2;
  card1.toughness=1;
  card1.artist="Nintendo";
  card1.bottom="©2015 Studio Kura";
  card1.createURL();
  card1.pictureImage = loadImage(card1.pictureImageURL);
  */

  XML xml;
  xml = loadXML("cards.xml");
  XML carddb = xml.getChild("cards");
  cards = carddb.getChildren("card");
  println("Total cards in database: " + cards.length);
  
  hand.add(new RealCard("Naturalize"));
  hand.add(new RealCard("Forest"));
  hand.add(new RealCard("Centaur's Herald"));
  hand.add(new RealCard("Rubbleback Rhino"));
  hand.add(new RealCard("Coursers' Accord"));
  hand.add(new RealCard("Forest"));
  hand.add(new RealCard("Plains"));
  
}
void draw() {
  int rotation = -30;
  int x = 10;
  int[] yArray = {210, 150, 120, 100, 110, 140, 190};
  background(255);
  /* Generated card 
  image(card1.pictureImage, 0, 0);
  */
  for (int i = 0; i < hand.size(); i++){
    pushMatrix();
    translate(x, yArray[i]);
    rotate(radians(rotation));
    //println(hand.get(i).toString());
    image(hand.get(i).pictureImage, 0, 0);
    popMatrix();
    //println(i  + " | " + rotation + " | " + x + " | " + yArray[i]); 
    rotation += 10;
    x += 100;
  }
}

