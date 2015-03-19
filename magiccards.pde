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

Card card1;

void setup(){
  size(400,560);
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

}
void draw(){
  image(card1.pictureImage, 0, 0);
}
