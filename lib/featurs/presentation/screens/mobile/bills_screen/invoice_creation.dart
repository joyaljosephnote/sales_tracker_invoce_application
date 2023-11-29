import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/components/bills_screen_cmp/invoice_creation_cmp.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class InvoiceCreationScreen extends StatelessWidget {
  const InvoiceCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheamColors().scaffoldBackgroundColor,
        title: textHeding1(data: "Create Invoice", textSize: 17),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: InvoiceForm(),
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: AppTheamColors().textFeildColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                              textHeding2(data: "Total Amount", textSize: 12)),
                      // child: Text("Total Amount")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textHeding1(data: "₹ 250.00", textSize: 16),
                          InvoicCreateButton(
                              height: sWidth! / 7, width: sWidth! / 3),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
