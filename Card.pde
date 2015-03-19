import java.net.URLEncoder;
class Card {
  int cardid;
  String name="";
  String cardColor="";//White, Blue, Black, Red, Green or Gold
  int mana_w, mana_u, mana_b, mana_r, mana_g, mana_colorless;
  String picture="";
  String supertype="", cardtype="", subtype="";
  String expansion="";//Revised, Magic 2012, etc.
  String rarity="";//Common, Uncommon, Rare or Mythic
  String cardtext="";
  int power, toughness;
  String artist="";
  String bottom="";//Copyright line
  String set="";
  int set1, set2;//collector number
  String pictureImageURL="";
  PImage pictureImage;

  Card(int _cardid, String _name) {
    cardid = _cardid;
    name = _name;
  }

  void createURL() {
    pictureImageURL = "http://www.mtgcardmaker.com/mcmaker/createcard.php?name=" + name.replaceAll(" ", "+") + 
      "&color=Red&mana_r=" +mana_r+ "&mana_u="+mana_u+"&mana_g="+mana_g+"&mana_b="+mana_b+"&mana_w="+mana_w+"&mana_colorless="+mana_colorless+
      "&picture="+picture.replaceAll(" ", "+")+"&supertype="+supertype.replaceAll(" ", "+")+"&cardtype="+cardtype.replaceAll(" ", "+")+"&subtype="+subtype.replaceAll(" ", "+")+
      "&expansion="+expansion.replaceAll(" ", "+")+"&rarity="+rarity.replaceAll(" ", "+")+"&cardtext="+cardtext.replaceAll(" ", "+")+
      "&power="+power+"&toughness="+toughness+
      "&artist="+artist.replaceAll(" ", "+")+"&bottom="+bottom.replaceAll(" ", "+")+
      "&set1="+set1+"&set2="+set1+
      "&extension=.jpg";
    //println(pictureImageURL);
  }
}

