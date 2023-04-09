import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PrescriptionScreen extends StatefulWidget {
  @override
  _PrescriptionScreenState createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
  File? _prescriptionImage;

  Future<void> _pickPrescriptionImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _prescriptionImage = File(pickedFile.path);
      });
    }
  }

  void _uploadPrescriptionImage() {
    // TODO: Implement upload logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prescription'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_prescriptionImage != null)
              Image.file(
                _prescriptionImage!,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => _pickPrescriptionImage(ImageSource.gallery),
              icon: Icon(Icons.photo_library),
              label: Text('Select Prescription from Gallery'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => _pickPrescriptionImage(ImageSource.camera),
              icon: Icon(Icons.camera_alt),
              label: Text('Take a Picture of Prescription'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _prescriptionImage != null
                  ? _uploadPrescriptionImage
                  : null,
              icon: Icon(Icons.cloud_upload),
              label: Text('Upload Prescription'),
            ),
          ],
        ),
      ),
    );
  }
}