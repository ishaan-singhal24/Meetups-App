import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/services.dart';
import 'package:meetups_app/basic_info_page.dart';
import 'app_drawer.dart';

class QrCode extends StatefulWidget {
  static const routeName = '/qr-code';

  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  String result = "Hello World...!";
  Future _scanQR() async {
    try {
      String? cameraScanResult = await scanner.scan();
      setState(() {
        result =
            cameraScanResult!; // setting string result with cameraScanResult
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scanner Example In Flutter"),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text(result), // Here the scanned result will be shown
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.camera_alt),
          onPressed: () {
            _scanQR(); // calling a function when user click on button
          },
          label: Text("Scan")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
