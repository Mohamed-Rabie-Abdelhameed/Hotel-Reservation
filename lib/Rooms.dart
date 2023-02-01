class Rooms {
  List<Room> rooms = [
    Room("King Room", "https://image-tc.galaxy.tf/wijpeg-ce560mc9y0q3m0ltoqqn6x1dc/deluxe-king-room_wide.jpg?crop=0%2C93%2C1772%2C997&width=1200"),
    Room("Queen Room", "https://www.schlosslehotel.com/wp-content/uploads/2016/07/Superior-Garden-Queen-2.jpg"),
    Room("Double Room", "https://cdn.traveltripper.io/site-assets/512_855_12327/media/2018-02-27-080006/large_ex-double-2.jpg"),
    Room("Single Room", "https://www.hotelmonterey.co.jp/upload_file/monhtyo/stay/sng_600_001.jpg"),
    Room("Twin Room", "https://1079465213.rsc.cdn77.org/media/2058/mercure-london-hyde-park-standard-twin-room-2.jpg?anchor=center&mode=crop&width=1170&height=780&rnd=133016646540000000"),
    Room("Triple Room", "https://dbijapkm3o6fj.cloudfront.net/resources/24033,1004,1,6,4,0,600,450/-4610-/20191024222727/triple-room.jpeg"),
    Room("Quad Room", "https://hoteldelaferns.com.my/wp-content/uploads/2021/08/Dela-Ferns-HD-3-of-157-scaled.jpg"),
  ];

  int current=0;

  String getRoomName() {
    return rooms[current].name;
  }

  String getRoomImage() {
    return rooms[current].image;
  }

  void next() {
    if (current < rooms.length - 1) {
      current++;
    }
  }
}

class Room {
  String name;
  String image;
  Room(this.name, this.image);
}
