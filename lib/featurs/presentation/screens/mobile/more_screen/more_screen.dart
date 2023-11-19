import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/components/more_screen_cmp/more_screen_cmp.dart';
import 'package:sales_tracker/featurs/utils/widgets/box_decoration_widget.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheamColors().scaffoldBackgroundColor,
      appBar: AppBar(title: MoreScreenHeadings().moreScreenAppbarHeading()),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: MoreScreenHeadings().ProfileHeadings()),
                heightSizedBox(heightValue: 10.0),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecorationForContainer().BoxShadowDecoration(),
                  child: const ProfileSection(),
                ),
                heightSizedBox(heightValue: 10.0),
                Align(
                    alignment: Alignment.centerLeft,
                    child: MoreScreenHeadings().SettingsHeadings()),
                heightSizedBox(heightValue: 10.0),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecorationForContainer().BoxShadowDecoration(),
                  child: const SettingsSection(),
                ),
                heightSizedBox(heightValue: 10.0),
                Align(
                    alignment: Alignment.centerLeft,
                    child: MoreScreenHeadings().SupportHeadings()),
                heightSizedBox(heightValue: 10.0),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecorationForContainer().BoxShadowDecoration(),
                  child: const SupportSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
