import 'package:flutter/material.dart';

import 'Rooms.dart';

class RoomsList extends StatefulWidget {
  const RoomsList({super.key});

  @override
  State<RoomsList> createState() => _RoomsListState();
}

class _RoomsListState extends State<RoomsList> {
  Rooms rooms = Rooms();
  List<Card> cards = [];
  void addCard() {
    cards.add(Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.network(this.rooms.getRoomImage(),
                width: 150, height: 150),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(this.rooms.getRoomName(),
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue)),
          ),
        ],
      ),
    ));
    setState(() {
      rooms.next();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rooms List',
        home: Scaffold(
          appBar: AppBar(
              title: const Text('Rooms List'),
              leading: const Icon(Icons.arrow_back)),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: cards,
              ),
              Container(
                alignment: Alignment.bottomRight,
                margin: const EdgeInsets.only(right: 20, bottom: 20),
                child: OutlinedButton(
                    onPressed: addCard,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightBlue),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    child: const Text("Next")),
              ),
            ],
          ),
        ));
  }
}
