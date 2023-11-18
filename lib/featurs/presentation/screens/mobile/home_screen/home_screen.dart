import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/components/home_screen_cmp/home_screen_cmp.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/box_decoration_widget.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 218, 252),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: textHeding1(
                          data: "Hello Tech Malayalam", textSize: 16)),
                ),
                heightSizedBox(heightValue: 13.0),
                Container(
                  height: 105,
                  width: double.infinity,
                  decoration: BoxDecorationForContainer().BoxShadowDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownButton(
                              elevation: 0,
                              hint: textHeding2(
                                  data: "Select Filter", textSize: 14),
                              items: dropdownItems,
                              onChanged: (value) {},
                              underline: Container(),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("View Bills"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: sWidth! / 2,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sales",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 96, 95, 95)),
                                  ),
                                  Text(
                                    "₹ 100.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Purchase",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 96, 95, 95)),
                                  ),
                                  Text(
                                    "₹ 849.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
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
