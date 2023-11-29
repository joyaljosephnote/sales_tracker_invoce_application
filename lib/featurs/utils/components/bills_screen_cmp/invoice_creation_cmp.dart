import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_tracker/featurs/business_logics/auth/auth_bloc.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/Ink_well_button.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_form_field_widget.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class CreateInvoiceScreenHeading {
  // ignore: non_constant_identifier_names
  Container CreateInvoiceHeading() => Container(
      child: textHeding1(data: "Create Invoice Heading", textSize: 17));
  // ignore: non_constant_identifier_names
  Container Customer() =>
      Container(child: textHeding1(data: "Customer", textSize: 15));
  // ignore: non_constant_identifier_names
  Container AddProduct() =>
      Container(child: textHeding1(data: "Add Product", textSize: 15));
  // ignore: non_constant_identifier_names
  Container SelectAccount() =>
      Container(child: textHeding1(data: "Select Account", textSize: 15));
  // ignore: non_constant_identifier_names
  Container AddNotes() =>
      Container(child: textHeding1(data: "Add Notes", textSize: 15));
  // ignore: non_constant_identifier_names
  Container Discount() =>
      Container(child: textHeding1(data: "Discount", textSize: 15));
  // ignore: non_constant_identifier_names
  Container TotalAmount() =>
      Container(child: textHeding1(data: "Total Amount", textSize: 15));
}

class InvoiceForm extends StatelessWidget {
  const InvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppTheamColors().textFeildColor,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: double.infinity,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Invoice #202310001",
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Edit"),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("26-Nov-2023 Due on 10-Dec-2023"),
                ),
              ],
            ),
          ),
        ),
        heightSizedBox(heightValue: 10.0),
        Align(
            alignment: Alignment.centerLeft,
            child: CreateInvoiceScreenHeading().AddProduct()),
        heightSizedBox(heightValue: 10.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.text,
            controller: null,
            hintText: "Select Product",
            validator: (inPutText) {
              return "Please select your product";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 10.0),
        Align(
            alignment: Alignment.centerLeft,
            child: CreateInvoiceScreenHeading().Customer()),
        heightSizedBox(heightValue: 10.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.text,
            controller: null,
            hintText: "Customer Name",
            validator: (inPutText) {
              return "Please select your product";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 10.0),
        Align(
            alignment: Alignment.centerLeft,
            child: CreateInvoiceScreenHeading().AddNotes()),
        heightSizedBox(heightValue: 10.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.text,
            controller: null,
            hintText: "Notes",
            validator: (inPutText) {
              return "Please select your product";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 10.0),
        Align(
            alignment: Alignment.centerLeft,
            child: CreateInvoiceScreenHeading().Discount()),
        heightSizedBox(heightValue: 10.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.text,
            controller: null,
            hintText: "Discount Amount",
            validator: (inPutText) {
              return "Please select your product";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 10.0),
        Align(
            alignment: Alignment.centerLeft,
            child: CreateInvoiceScreenHeading().SelectAccount()),
        heightSizedBox(heightValue: 10.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.text,
            controller: null,
            hintText: "Account Type",
            validator: (inPutText) {
              return "Please select your product";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 10.0),
        Align(
            alignment: Alignment.centerLeft,
            child: CreateInvoiceScreenHeading().SelectAccount()),
        heightSizedBox(heightValue: 10.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.text,
            controller: null,
            hintText: "Account Type",
            validator: (inPutText) {
              return "Please select your product";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 10.0),
      ],
    );
  }
}

// ignore: must_be_immutable
class InvoicCreateButton extends StatelessWidget {
  InvoicCreateButton({super.key, required this.height, required this.width});

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppButtonColors().buttonColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWellButtonWidget(
        data: "CREATE",
        onTap: () {},
        fontSize: sWidth! / 28,
        borderRadius: 10,
      ),
    );
  }
}
