import 'package:ccisl/components/wokers_tile.dart';
import 'package:ccisl/widgets/serchbar.dart';
import 'package:flutter/material.dart';

class RoofingPage extends StatefulWidget {
  const RoofingPage({super.key});

  @override
  State<RoofingPage> createState() => _RoofingPageState();
}

class _RoofingPageState extends State<RoofingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roofing'),
      ),
      body: Center(
        child: Column(
          children: [
            buildSearchBar('Search', () {}),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                padding: const EdgeInsets.all(16.0),
                children: const <Widget>[
                  WorkersTile(
                    title: 'Sahansa',
                    backgroundImagePath: "assets/images/p1.png",
                    rating: 5,
                    grade: 'A',
                    status: 'Available',
                    city: 'Galle',
                  ),
                  WorkersTile(
                    title: 'Sahansa',
                    backgroundImagePath: "assets/images/p2.png",
                    rating: 5,
                    grade: 'A',
                    status: 'Available',
                    city: 'Galle',
                  ),
                  WorkersTile(
                    title: 'Sahansa',
                    backgroundImagePath: "assets/images/p3.png",
                    rating: 5,
                    grade: 'A',
                    status: 'Available',
                    city: 'Galle',
                  ),
                  WorkersTile(
                    title: 'Sahansa',
                    backgroundImagePath: "assets/images/p4.png",
                    rating: 5,
                    grade: 'A',
                    status: 'Available',
                    city: 'Galle',
                  ),
                  WorkersTile(
                    title: 'Sahansa',
                    backgroundImagePath: "assets/images/p1.png",
                    rating: 5,
                    grade: 'A',
                    status: 'Available',
                    city: 'Galle',
                  ),
                  WorkersTile(
                    title: 'Sahansa',
                    backgroundImagePath: "assets/images/p5.png",
                    rating: 5,
                    grade: 'A',
                    status: 'Available',
                    city: 'Galle',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
