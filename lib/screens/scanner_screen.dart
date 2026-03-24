import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scan Card')),
      body: MobileScanner(
        onDetect: (barcodeCapture) {
          final List<Barcode> barcodes = barcodeCapture.barcodes;

          for (final barcode in barcodes) {
            final String? code = barcode.rawValue;

            if (code != null) {
              Navigator.pop(context, code);
              break;
            }
          }
        },
      ),
    );
  }
}