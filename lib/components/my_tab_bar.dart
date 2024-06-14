import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      splashBorderRadius: BorderRadius.circular(15),
      labelColor: HexColor('#EB7700'),
      indicatorColor: HexColor('#EB7700'),
      automaticIndicatorColorAdjustment: true,
      controller: tabController,
      tabs: const [
        //1st tab
        Tab(
          text: 'Rating & Reviews',
        ),
        //2nd tab
        Tab(
          text: 'Qualifications',
        ),
      ],
    );
  }
}
