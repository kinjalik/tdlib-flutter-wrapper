import 'package:flutter/material.dart';
import 'package:tdlib_ffi_poc/api/raw_json_client.dart';
import 'package:tdlib_ffi_poc_example/telegram.dart';


void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  TelegramClient _client = TelegramClient();

  @override
  void initState() {
    super.initState();
    telegram(_client);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running'),
        ),
      ),
    );
  }
}
