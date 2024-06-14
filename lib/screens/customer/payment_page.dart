import 'package:ccisl/components/info_text_field.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Submission',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCustomerField('Job Name'),
              buildCustomerField('Customer Name:'),
              buildCustomerField('Job Location:'),
              buildCustomerField('Payment Date:'),
              buildCustomerField('Payment Time:'),
              buildCustomerField('Payment Price:'),
              const SizedBox(height: 15),
              const Text(
                'Rate the Job:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    index < 1 ? Icons.star : Icons.star_border,
                    color: Colors.yellow,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 393,
        height: 75,
        decoration: BoxDecoration(
          color: Color(0xFFFEFAE6),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 100, right: 100, bottom: 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Confirm & Pay',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: HexColor('#FFEB7700'),
              minimumSize: Size(215, 40),
            ),
          ),
        ),
      ),
    );
  }
}
