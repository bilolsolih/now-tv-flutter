import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:now_tv/utils/colors.dart';
import 'package:now_tv/utils/styles.dart';

class LiveMatchBottomSection extends StatefulWidget {
  const LiveMatchBottomSection({
    super.key,
  });

  @override
  State<LiveMatchBottomSection> createState() => _LiveMatchBottomSectionState();
}

class _LiveMatchBottomSectionState extends State<LiveMatchBottomSection>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 28.h,
          child: TabBar(
            controller: controller,
            indicatorColor: AppColors.almostWhite,
            dividerHeight: 0.4,
            tabs: [
              Text("Description", style: AppStyles.tabBar),
              Text("Match schedule", style: AppStyles.tabBar),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: TabBarView(
            controller: controller,
            children: [
              Text(
                "Bar 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
              Text(
                "Bar 2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
