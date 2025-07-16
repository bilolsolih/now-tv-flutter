import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/live_match_detail_page.dart';

void main() {
  runApp(NowTW());
}

class NowTW extends StatelessWidget {
  const NowTW({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LiveMatchDetailPage(),
      ),
    );
  }
}