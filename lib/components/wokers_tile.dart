import 'package:ccisl/screens/customer/worker_info_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WorkersTile extends StatelessWidget {
  final String title;
  final String backgroundImagePath;
  final int rating;
  final String grade;
  final String status;
  final String city;

  const WorkersTile({
    super.key,
    required this.title,
    required this.backgroundImagePath,
    required this.rating,
    required this.grade,
    required this.status,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WorkersInfoPage(
              title: title,
              backgroundImagePath: backgroundImagePath,
              rating: rating,
              grade: grade,
              status: status,
              city: city,
            ),
          ),
        );
      },
      child: Card(
        color: HexColor('#EDEDED'),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xFFEE8924),
                        ),
                        child: Center(
                          child: Text(
                            grade,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Text color
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.grey.shade600,
                        ),
                        child: Center(
                          child: Text(
                            status,
                            style: TextStyle(
                              color: HexColor('#98E697'),
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Background Image
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  backgroundImagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Content Container
              Container(
                margin: const EdgeInsets.only(top: 110),
                decoration: BoxDecoration(
                  color: Colors.grey.shade700.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 200,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            city,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            index < rating ? Icons.star : Icons.star_border,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
