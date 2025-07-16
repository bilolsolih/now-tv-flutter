import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:now_tv/live_match_bottom_section.dart';
import 'package:now_tv/live_match_buttons_section.dart';
import 'package:now_tv/live_match_titles_section.dart';
import 'package:now_tv/utils/colors.dart';

import '../live_match_top_section.dart';

class LiveMatchDetailPage extends StatelessWidget {
  const LiveMatchDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.mainBgBegin, AppColors.mainBgEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            spacing: 7.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LiveMatchTopSection(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  spacing: 16.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LiveMatchTitlesSection(),
                    LiveMatchButtonsSection(),
                    LiveMatchBottomSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
