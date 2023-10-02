import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  dynamic myImage;

  Future<void> pickerImage() async {
    final picker = ImagePicker();

    final image = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (image != null) {
      if (kIsWeb) {
        final imageWeb = await image.readAsBytes();
        setState(() {
          myImage = imageWeb;
        });
      } else {
        setState(() {
          myImage = image;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Column(
            children: [
              if (myImage != null)
                if (kIsWeb)
                  Image.memory(myImage as Uint8List)
                else
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    width: 300,
                    child: Image.file(
                      File((myImage as XFile).path),
                    ),
                  ),
              ElevatedButton(
                onPressed: () async {
                  await pickerImage();
                },
                child: const Text('Select Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
