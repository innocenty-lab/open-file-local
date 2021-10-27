import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:open_file/open_file.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var _openResult = 'Unknown';

  Future<void> openFile() async {
    var filePath = r'/storage/emulated/0/update.apk';
    final Directory _videoDir = Directory('/storage/emulated/0/KGVideos/Yutub.mp4');
    // FilePickerResult result = await FilePicker.platform.pickFiles();

    // if (result != null) {
    //   filePath = result.files.single.path;
    // } else {
    //   // User canceled the picker
    // }
    final _result = await OpenFile.open(_videoDir.path);
    print(_result.message);

    // setState(() {
    //   _openResult = "type=${_result.type}  message=${_result.message}";
    // });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text('open result: $_openResult\n'),
              TextButton(
                child: Text('Tap to open file'),
                onPressed: openFile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}