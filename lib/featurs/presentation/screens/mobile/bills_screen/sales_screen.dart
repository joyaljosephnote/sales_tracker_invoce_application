import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/components/bills_screen_cmp/sales_screen_cmp.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppTheamColors().textFeildColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 50,
                          child:
                              textHeding2(data: "Total Amount", textSize: 12)),
                      SizedBox(
                          width: 50,
                          child: textHeding2(data: "Pending", textSize: 12)),
                      SizedBox(
                          width: 50,
                          child: textHeding2(data: "Paid", textSize: 12)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 50,
                          child: textHeding2(data: "₹ 0.00", textSize: 14)),
                      SizedBox(
                          width: 50,
                          child: textHeding2(data: "₹ 0.00", textSize: 14)),
                      SizedBox(
                          width: 50,
                          child: textHeding2(data: "₹ 0.00", textSize: 14)),
                    ],
                  ),
                  const Divider(
                    thickness: 2.5,
                  ),
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: textHeding1(data: "This year", textSize: 14)),
                      heightSizedBox(heightValue: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textHeding2(data: "01-01-23/31-12-23", textSize: 15),
                          textHeding2(data: "Cash", textSize: 15),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
        floatingActionButton: SalesFlotingButton());
  }
}
