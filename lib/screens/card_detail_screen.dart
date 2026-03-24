import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class CardDetailScreen extends StatelessWidget {
  final Map card;

  CardDetailScreen({required this.card});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(card['name'])),
      body: Center(
        child: BarcodeWidget(
          barcode: Barcode.code128(),
          data: card['cardNumber'],
          width: 200,
          height: 100,
        ),
      ),
    );
  }
}