class RealCard {
  int muid;
  String name="";
  String pictureImageURL="";
  PImage pictureImage;

  RealCard(String _name) {
    name = _name;
    muid = 0;
    for (int i = 0; i < cards.length; i++) {
      //int id = cards[i].getChild("set").getInt("muId");
      String coloring = cards[i].getChild("manacost").getContent();
      String name = cards[i].getChild("name").getContent();
      //println(i + " of " + cards.length + ": checking for a match for " + _name + " in " + name + "...");
      if (name.equals(_name)) {
        println(name);
        XML sets[] = cards[i].getChildren("set");
        if (sets.length>0) {
          for (int s = sets.length-1; s >= 0; s--) {
            if(muid != 0) {
              break;
            }
            XML set = sets[s];
            String[] attributes = set.listAttributes();
            for (int j = 0; j < attributes.length; j++) {
              if (attributes[j].equals("muId")) {
                println(set.toString());
                muid = int(set.getString("muId"));
                //println("muid=" + muid);
                this.createURL();
                println(pictureImageURL);
                pictureImage = loadImage(pictureImageURL);
                break;
              }
            }
          }
        }
        break;
      }
      //println(", " + coloring + ", " + name);
    }
  }

  void createURL() {
    pictureImageURL = "http://gatherer.wizards.com/Handlers/Image.ashx?type=card&multiverseid=" + muid + "&adugyfaudgfak=.jpg"; 
    //println(pictureImageURL);
  }

  String toString(){
    return name + " | muid = " + muid + " | pictureImageURL = " + pictureImageURL;
  }
}

