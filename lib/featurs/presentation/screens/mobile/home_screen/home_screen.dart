import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/components/home_screen_cmp/home_screen_cmp.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/box_decoration_widget.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeScreenHeadings().homeAppBar(),
      backgroundColor: AppTheamColors().scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              children: [
                const SalesAndPurchaseFilter(),
                heightSizedBox(heightValue: 10.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: HomeScreenHeadings().CreateHeadings(),
                ),
                heightSizedBox(heightValue: 10.0),
                Container(
                  alignment: Alignment.center,
                  height: sWidth! / 2.6,
                  width: double.infinity,
                  decoration: BoxDecorationForContainer().BoxShadowDecoration(),
                  child: const CreateMenuNavigations(),
                ),
                heightSizedBox(heightValue: 10.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: HomeScreenHeadings().EasyOperationsHeadings(),
                ),
                heightSizedBox(heightValue: 10.0),
                Container(
                  alignment: Alignment.center,
                  height: 68,
                  width: double.infinity,
                  decoration: BoxDecorationForContainer().BoxShadowDecoration(),
                  child: const EasyOperationsMenu(),
                ),
                heightSizedBox(heightValue: 10.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: HomeScreenHeadings().QuickAccessHeadings(),
                ),
                heightSizedBox(heightValue: 10.0),
                Container(
                  alignment: Alignment.center,
                  height: sWidth! / 2.6,
                  width: double.infinity,
                  decoration: BoxDecorationForContainer().BoxShadowDecoration(),
                  child: const QuickAccessMenu(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
