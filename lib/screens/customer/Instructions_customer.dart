import 'package:ccisl/components/instructions_card_page.dart';
import 'package:flutter/material.dart';

class CustomerInstructions extends StatefulWidget {
  const CustomerInstructions({super.key});

  @override
  State<CustomerInstructions> createState() => _CustomerInstructionsState();
}

class _CustomerInstructionsState extends State<CustomerInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    ' Safety\n Instructions',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/sfc.png',
                    width: 100,
                  )
                ],
              ),
            ),
            InstructionsCardPage(text: "Verify Worker Information"),
            InstructionsCardPage(text: "Verify Worker Information"),
            InstructionsCardPage(text: "Verify Worker Information"),
            InstructionsCardPage(text: "Verify Worker Information"),
          ],
        ),
      ),
    );
  }
}
