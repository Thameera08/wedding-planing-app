import 'package:ccisl/screens/customer/payment_page.dart';
import 'package:flutter/material.dart';

class OngoingRequestsCard extends StatelessWidget {
  final String jobName;
  final String status;
  final String cusName;
  final Function()? onTap;
  final String price;

  const OngoingRequestsCard({
    super.key,
    required this.jobName,
    required this.status,
    required this.cusName,
    this.onTap,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor = Colors.black;

    // Determine text and color based on status
    String displayStatus;
    switch (status.toLowerCase()) {
      case 'accepted':
        displayStatus = 'Accepted';
        statusColor = Colors.green;
        break;
      case 'pending':
        displayStatus = 'Pending';
        statusColor = Colors.orange;
        break;
      case 'rejected':
        displayStatus = 'Rejected';
        statusColor = Colors.red;
        break;
      default:
        displayStatus = 'Unknown';
        break;
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PaymentPage(),
          ),
        );
      },
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 345,
          height: 92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      jobName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      displayStatus,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      cusName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Rs. $price',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Rs. $price',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
