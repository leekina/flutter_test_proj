import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgTestMain extends StatelessWidget {
  SvgTestMain({super.key});

  List<String> navImageList_b = [
    'images/icon_customer_b.svg',
    'images/icon_record_b.svg',
    'images/icon_director_b.svg',
    'images/icon_schedule_b.svg',
    'images/icon_reserve_b.svg',
    'images/icon_sales_b.svg',
    'images/icon_sms_b.svg',
    'images/icon_settings_b.svg',
  ];
  List<String> navImageList_o = [
    'images/icon_customer_o.svg',
    'images/icon_record_o.svg',
    'images/icon_director_o.svg',
    'images/icon_schedule_o.svg',
    'images/icon_reserve_o.svg',
    'images/icon_sales_o.svg',
    'images/icon_sms_o.svg',
    'images/icon_settings_o.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: SvgPicture.asset(navImageList_o[4]),
            ),
            Container(
              width: 100,
              height: 100,
              child: SvgPicture.asset(navImageList_o[2]),
            ),
            Container(
              width: 100,
              height: 100,
              child: SvgPicture.asset(navImageList_o[3]),
            ),
            Container(
              width: 100,
              height: 100,
              child: SvgPicture.asset(navImageList_o[5]),
            ),
            Container(
              width: 100,
              height: 100,
              child: SvgPicture.asset(navImageList_o[6]),
            ),
          ],
        ),
      ),
    );
  }
}
