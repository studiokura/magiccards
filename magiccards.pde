// Inspiration and API: http://www.mtgcardmaker.com/

/* Objects for handling all the cards in a game
 ArrayList<Card> hand1;
 ArrayList<Card> hand2;
 ArrayList<Card> battlefield1;
 ArrayList<Card> battlefield2;
 ArrayList<Card> library1;
 ArrayList<Card> library2;
 ArrayList<Card> graveyard1;
 ArrayList<Card> graveyard2;
 ArrayList<Card> exile1;
 ArrayList<Card> exile2;
 */

ArrayList<RealCard> hand = new ArrayList<RealCard>();
XML[] cards;
Card card1;
RealCard aCard;

void setup() {
  size(800, 600);
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

  XML xml;
  xml = loadXML("cards.xml");
  XML carddb = xml.getChild("cards");
  cards = carddb.getChildren("card");

  for (int i = 0; i < cards.length; i++) {
    //int id = cards[i].getChild("set").getInt("muId");
    String coloring = cards[i].getChild("manacost").getContent();
    String name = cards[i].getChild("name").getContent();
    //println(", " + coloring + ", " + name);
  }
  println(cards.length);
  aCard = new RealCard("Selsenya Sentry");
  hand.add(aCard);
  aCard = new RealCard("Centaur's Herald");
  hand.add(aCard);
  aCard = new RealCard("Centaur's Herald");
  hand.add(aCard);
  aCard = new RealCard("Rubbleback Rhino");
  hand.add(aCard);
  aCard = new RealCard("Coursers' Accord");
  hand.add(aCard);
  aCard = new RealCard("Forest");
  hand.add(aCard);
  aCard = new RealCard("Plains");
  hand.add(aCard);
}
void draw() {
  background(255);
  //image(card1.pictureImage, 0, 0);
  pushMatrix();
  translate(10, 210);
  rotate(radians(-30));
  if(hand.get(0).pictureImage.width > 1){
    image(hand.get(0).pictureImage, 0, 0);
  }
  popMatrix();
  pushMatrix();
  translate(110, 155);
  rotate(radians(-20));
  if(hand.get(1).pictureImage.width > 1){
    image(hand.get(1).pictureImage, 0, 0);
  }
  popMatrix();
  pushMatrix();
  translate(210, 120);
  rotate(radians(-10));
  image(hand.get(2).pictureImage, 0, 0);
  popMatrix();
  /*pushMatrix();
  translate(310, 100);
  rotate(radians(0));
  image(hand.get(3).pictureImage, 0, 0);
  popMatrix();
  pushMatrix();
  translate(410, 100);
  rotate(radians(10));
  image(hand.get(4).pictureImage, 0, 0);
  popMatrix();
  pushMatrix();
  translate(510, 120);
  rotate(radians(20));
  image(hand.get(5).pictureImage, 0, 0);
  popMatrix();
  pushMatrix();
  translate(610, 150);
  rotate(radians(30));
  image(hand.get(6).pictureImage, 0, 0);
  popMatrix();*/
}

