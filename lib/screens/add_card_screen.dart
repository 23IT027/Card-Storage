import 'package:flutter/material.dart';
//import 'package:loyalty_card_app/services/db_service.dart';
import 'dart:math';

class AddCardScreen extends StatefulWidget {
  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final expiryController = TextEditingController();

  void saveCard() async {
    final id = Random().nextInt(100000).toString();

    final card = {
      'id': id,
      'name': nameController.text,
      'cardNumber': numberController.text,
      'expiryDate': expiryController.text,
      'updatedAt': DateTime.now().toIso8601String(),
      'isSynced': false,
    };

    //await DBService().addCard(card);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Card")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Name")),
            TextField(
                controller: numberController,
                decoration: InputDecoration(labelText: "Card Number")),
            TextField(
                controller: expiryController,
                decoration: InputDecoration(labelText: "Expiry Date")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: saveCard, child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
