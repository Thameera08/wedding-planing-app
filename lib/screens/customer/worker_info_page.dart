import 'package:ccisl/components/my_silver_app_bar.dart';
import 'package:ccisl/components/my_tab_bar.dart';
import 'package:ccisl/screens/customer/job_request_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WorkersInfoPage extends StatefulWidget {
  final String title;
  final String backgroundImagePath;
  final int rating;
  final String grade;
  final String status;
  final String city;

  const WorkersInfoPage({
    super.key,
    required this.title,
    required this.backgroundImagePath,
    required this.rating,
    required this.grade,
    required this.status,
    required this.city,
  });

  @override
  State<WorkersInfoPage> createState() => _WorkersInfoPageState();
}

class _WorkersInfoPageState extends State<WorkersInfoPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: null,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  widget.backgroundImagePath,
                  width: screenWidth * 0.4, // Adjust image width as needed
                ),
                Text(
                  widget.status,
                  style: TextStyle(
                    color: HexColor('#98E697'),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.city,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < widget.rating ? Icons.star : Icons.star_border,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(
              child: Text('hi'),
            ),
            Center(
              child: Text('hello'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 50, right: 50),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const JobRequestPage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: HexColor('#EB7700'),
          ),
          child: const Text(
            'Send a Job Request',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
