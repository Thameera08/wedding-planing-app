// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:ccisl/components/make_a_complaint_card.dart';
import 'package:ccisl/components/my_text_field.dart';
import 'package:ccisl/screens/customer/ongoing_requests.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hexcolor/hexcolor.dart';

class MakeAComplaint extends StatefulWidget {
  const MakeAComplaint({super.key});

  @override
  State<MakeAComplaint> createState() => _MakeAComplaintState();
}

class _MakeAComplaintState extends State<MakeAComplaint> {
  PlatformFile? selectedFile;

  void _openFiles() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    if (resultFile != null) {
      setState(() {
        selectedFile = resultFile.files.first;
      });
      // The user picked a file.
      PlatformFile file = resultFile.files.first;
      print(file.name);
      print(file.bytes);
      print(file.extension);
      print(file.path);

      // You can use 'file.path' to get the file path.
      print('File path: ${file.path}');

      // Handle the file here, e.g., upload to server or process locally.
    } else {
      // User canceled the picker.
      print('User canceled file picking.');
    }
  }

  void _showReportDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Report',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          titlePadding: const EdgeInsets.all(15),
          content: Material(
            borderRadius: BorderRadius.circular(15),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              height: 400,
              width: 300,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Incident :',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    AdjustableTextField(),
                    SizedBox(height: 20),
                    Text(
                      'New Upload',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _openFiles,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: Size(115, 52),
                      ),
                      child: Text(
                        'Click to browse your files',
                      ),
                    ),
                    SizedBox(height: 20),
                    if (selectedFile != null) ...[
                      Text(
                        'Selected File:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text('Name: ${selectedFile!.name}'),
                      Text('Size: ${selectedFile!.size} bytes'),
                      Text('Type: ${selectedFile!.extension}'),
                    ],
                  ],
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: HexColor('#FFFFFF'),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: HexColor('#EB7700'),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Make a Complaint',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ComplainCard(
              onTap: _showReportDialog,
              jobName: 'Cleaning Roof',
              status: 'Accepted',
              cusName: 'John Depp',
              price: '20000',
            ),
            SizedBox(height: 15),
            ComplainCard(
              onTap: _showReportDialog,
              jobName: 'Cleaning Roof',
              status: 'Pending',
              cusName: 'John Depp',
              price: '20000',
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const OngoingRequests(),
                  ),
                );
              },
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor('#F6F6F6'),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 345,
                  height: 77,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Back to Payments',
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#717786'),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/pay.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 270,
        height: 50,
        color: Colors.yellow,
      ),
    );
  }
}
