import 'package:ccisl/components/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hexcolor/hexcolor.dart';

class JobRequestPage extends StatefulWidget {
  const JobRequestPage({super.key});

  @override
  State<JobRequestPage> createState() => _JobRequestPageState();
}

class _JobRequestPageState extends State<JobRequestPage> {
  late TextEditingController dateStartController;
  late TextEditingController dateCloseController;

  final List<String> items = [
    'CASH',
    'VISA',
  ];
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    dateStartController = TextEditingController();
    dateCloseController = TextEditingController();
  }

  @override
  void dispose() {
    dateStartController.dispose();
    dateCloseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Request'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Describe your job before sending the job request',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Job Description:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const AdjustableTextField(),
            const SizedBox(height: 20),
            const Text(
              'Starting Date:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: dateStartController,
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                hintText: 'Select starting date',
                suffixIcon: const Icon(Icons.calendar_today),
              ),
              onTap: () => _selectDate(dateStartController),
            ),
            const SizedBox(height: 20),
            const Text(
              'Closing Date:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: dateCloseController,
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                hintText: 'Select closing date',
                suffixIcon: const Icon(Icons.calendar_today),
              ),
              onTap: () => _selectDate(dateCloseController),
            ),
            const SizedBox(height: 20),
            Container(
              width: 450,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: DropdownButton<String>(
                  isExpanded: true,
                  icon: const Icon(Icons.arrow_drop_down_circle_outlined,
                      color: Colors.black),
                  hint: const Text('Select Item',
                      style: TextStyle(color: Colors.black)),
                  value: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  items: items.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement send logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#EB7700'),
                minimumSize: const Size(150, 40),
              ),
              child: const Text(
                "Send",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                // Implement cancel logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#4A4A4C'),
                minimumSize: const Size(150, 40),
              ),
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      controller.text = formattedDate;
    }
  }
}
