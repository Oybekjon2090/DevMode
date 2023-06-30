import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class OpenFile extends StatefulWidget {
  const OpenFile({super.key});

  @override
  State<OpenFile> createState() => _OpenFileState();
}

class _OpenFileState extends State<OpenFile> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? platformFile;
  bool isLoading = false;
  File? fileToDisplay;

  void picFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
          allowMultiple: true,
          dialogTitle: 'Select a File for our App',
          type: FileType.any,
          allowedExtensions: ['jpg', 'jpeg', 'gif', 'png']);

      if (result != null) {
        _fileName = result!.files.first.name;
        platformFile = result!.files.first;
        fileToDisplay = File(platformFile!.path.toString());
        // ignore: avoid_print
        print('File nam $_fileName');
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: isLoading
                  ? const CircularProgressIndicator()
                  : TextButton(
                      onPressed: () {
                        picFile();
                      },
                      child: const Text('file'))),
          if (platformFile != null)
            SizedBox(
              height: 300,
              width: 400,
              child: Image.file(fileToDisplay!),
            )
        ],
      ),
    );
  }
}
