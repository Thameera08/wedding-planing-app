import 'package:ccisl/components/ongoing_requests_card.dart';
import 'package:ccisl/screens/customer/make_a_complaint.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OngoingRequests extends StatefulWidget {
  const OngoingRequests({super.key});

  @override
  State<OngoingRequests> createState() => _OngoingRequestsState();
}

class _OngoingRequestsState extends State<OngoingRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Text(
                'Ongoing Requests',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              OngoingRequestsCard(
                jobName: 'Cleaning Roof',
                status: 'Accepted',
                cusName: 'John Depp',
                price: '20000',
              ),
              const SizedBox(height: 15),
              OngoingRequestsCard(
                jobName: 'Cleaning Roof',
                status: 'Rejected',
                cusName: 'John Depp',
                price: '20000',
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MakeAComplaint(),
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
                            'Make a Complaint',
                            style: TextStyle(
                              fontSize: 16,
                              color: HexColor('#717786'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/images/complain.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
