import 'package:flutter/material.dart';
import 'encription.dart' as encript;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Encrypt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Encrypt-Decrypt'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('message: ' + encript.message),
            Text('message encrypted: ' + encript.encryptText(encript.message)),
            Text('message decrypted: ' +
                encript.decryptText(encript.encryptText(encript.message))),
          ],
        ),
      ),
    );
  }
}
