import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_designer/story_designer.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story Designer Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final picker = ImagePicker();
                await picker.getImage(source: ImageSource.gallery).then((file) async {
                  File editedFile = await Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => StoryDesigner(
                            filePath: file.path,
                          )));

                  // ------- you have editedFile

                  if (editedFile != null) {
                    print('editedFile: ' + editedFile.path);
                  }
                });
              },
              child: Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}
