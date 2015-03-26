class RealCard {
  int muid;
  String name="";
  String pictureImageURL="";
  PImage pictureImage;

  RealCard(String _name) {
    name = _name;
  }

  void createURL() {
    pictureImageURL = "http://gatherer.wizards.com/Handlers/Image.ashx?type=card&multiverseid=" + muid + "&adugyfaudgfak=.jpg"; 
    //println(pictureImageURL);
  }
}

