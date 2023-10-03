import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _scanBarcode="N.A";
  Future<void> scanQR() async {
    String barcodeScanRes;

    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);

    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }


    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }
_launchURL()async{
    final Uri url=Uri.parse('https://technocracy.nitrr.ac.in/');
    if(!await launchUrl(url)){
      throw Exception("Could not launch url");
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Technocracy'),
        actions: [
          IconButton(onPressed:()async{scanQR();}, icon: Icon(Icons.qr_code),),
          SizedBox(width: 10),
        ],
      ) ,
      body: Column(
        children: [
          Text("Scan result:${_scanBarcode}"),
          TextButton(onPressed:()async{_launchURL();}, child: Text('Visit Web'))
        ],
      ),
    );
  }
}
