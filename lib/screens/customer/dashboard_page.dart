// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ccisl/components/dashboard_card.dart';
import 'package:ccisl/screens/categories/electricians_page.dart';
import 'package:ccisl/screens/categories/roofing_page.dart';
import 'package:ccisl/screens/customer/Instructions_customer.dart';
import 'package:ccisl/widgets/serchbar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomerDashboardPage extends StatefulWidget {
  const CustomerDashboardPage({super.key});

  @override
  State<CustomerDashboardPage> createState() => _CustomerDashboardPageState();
}

class _CustomerDashboardPageState extends State<CustomerDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  color: HexColor('#03045E'),
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Plan Your Wedding in one Place!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildSearchBar(
                'Search',
                () {},
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  padding: EdgeInsets.all(16.0),
                  children: <Widget>[
                    DashboardCard(
                      title: "Hotels",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ElectriciansPage(),
                          ),
                        );
                      },
                      backgroundImagePath: 'assets/images/card1.png',
                    ),
                    DashboardCard(
                      title: "Photography",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RoofingPage(),
                          ),
                        );
                      },
                      backgroundImagePath: 'assets/images/card2.png',
                    ),
                    DashboardCard(
                      title: "Meals",
                      onTap: () {},
                      backgroundImagePath: 'assets/images/card3.png',
                    ),
                    DashboardCard(
                      title: "Entertainments",
                      onTap: () {},
                      backgroundImagePath: 'assets/images/card4.png',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CustomerInstructions(),
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
                            'Safety Instructions',
                            style: TextStyle(
                              fontSize: 16,
                              color: HexColor('#717786'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/sfc.png', // Specify the correct asset path
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
      ),
    );
  }
}
