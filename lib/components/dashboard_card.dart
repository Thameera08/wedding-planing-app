import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final String backgroundImagePath;
  final VoidCallback onTap;

  const DashboardCard({
    super.key,
    required this.title,
    required this.backgroundImagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: HexColor('#EDEDED'),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
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
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Image Icon
            ],
          ),
        ),
      ),
    );
  }
}
