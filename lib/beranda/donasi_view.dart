import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Image_Picker extends StatefulWidget {
  @override
  _Image_PickerState createState() => _Image_PickerState();
}

class _Image_PickerState extends State<Image_Picker> {
  File image;

  //akses galeri
  galery() async {
    var _image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = _image;
    });
  }

  //akses camera
  camera() async {
    var _image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      image = _image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Image picker")),
        body: Column(
          children: <Widget>[
            image == null
                ? Text('Tidak Ada Gambar')
                : Image.file(image, width: 300, height: 200, fit: BoxFit.cover),

            RaisedButton(
              onPressed: galery,
              child: Text("Galeri"),
            ),

            RaisedButton(
              onPressed: camera,
              child: Text("Camera"),
            ),
          ],
        )
    );
  }
}