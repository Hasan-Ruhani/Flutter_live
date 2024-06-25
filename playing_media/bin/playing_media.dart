
class Media {
  void play() {
    print("Playing media...");
  }
}

// Derived class Song
class Song extends Media {
  String artist;

  Song(this.artist);

  void play() {
    print("Playing song by $artist...");
  }
}

void main() {
  // Create an instance of Media
  Media media = Media();
  media.play();

  // Create an instance of Song
  Song song = Song("Hero Alam");
  song.play();
}
