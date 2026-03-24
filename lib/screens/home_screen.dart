import 'package:flutter/material.dart';
//import '../../services/db_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List cards = [];

  @override
  void initState() {
    super.initState();
    loadCards();
  }

  void loadCards() async {
    //final data = await DBService().getCards();
    setState(() {
   //   cards = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cards")),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          return ListTile(
            title: Text(card['name']),
            subtitle: Text(card['cardNumber']),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}