import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/Ink_well_button.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_form_field_widget.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class AddProductScreenHeading {
  // ignore: non_constant_identifier_names
  Container AddProductHeading() =>
      Container(child: textHeding1(data: "Add Product Details", textSize: 17));
  // ignore: non_constant_identifier_names
  Container ProductName() =>
      Container(child: textHeding1(data: "Product Name", textSize: 15));
  // ignore: non_constant_identifier_names
  Container TaxRate() =>
      Container(child: textHeding1(data: "Tax Rate %", textSize: 15));
  // ignore: non_constant_identifier_names
  Container SellingPrice() =>
      Container(child: textHeding1(data: "Selling Price", textSize: 15));
  // ignore: non_constant_identifier_names
  Container PurchaseRate() =>
      Container(child: textHeding1(data: "Purchase Rate", textSize: 15));
  // ignore: non_constant_identifier_names
  Container HSNCode() =>
      Container(child: textHeding1(data: "HSN Code (Optional)", textSize: 15));
  // ignore: non_constant_identifier_names
  Container ProductUnit() =>
      Container(child: textHeding1(data: "Product Unit", textSize: 15));
}

class ProductFormFeild extends StatelessWidget {
  const ProductFormFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: AddProductScreenHeading().ProductName()),
        heightSizedBox(heightValue: 15.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.text,
            controller: null,
            hintText: "",
            validator: (inPutText) {
              return "Please fill the required field";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 15.0),
        Align(
            alignment: Alignment.centerLeft,
            child: AddProductScreenHeading().TaxRate()),
        heightSizedBox(heightValue: 15.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.number,
            controller: null,
            hintText: "",
            validator: (inPutText) {
              return "Please fill the required field";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 15.0),
        Align(
            alignment: Alignment.centerLeft,
            child: AddProductScreenHeading().SellingPrice()),
        heightSizedBox(heightValue: 15.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.number,
            controller: null,
            hintText: "",
            validator: (inPutText) {
              return "Please fill the required field";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 15.0),
        Align(
            alignment: Alignment.centerLeft,
            child: AddProductScreenHeading().PurchaseRate()),
        heightSizedBox(heightValue: 15.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.number,
            controller: null,
            hintText: "",
            validator: (inPutText) {
              return "Please fill the required field";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 15.0),
        Align(
            alignment: Alignment.centerLeft,
            child: AddProductScreenHeading().HSNCode()),
        heightSizedBox(heightValue: 15.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.number,
            controller: null,
            hintText: "",
            validator: (inPutText) {
              return "Please fill the required field";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 15.0),
        Align(
            alignment: Alignment.centerLeft,
            child: AddProductScreenHeading().ProductUnit()),
        heightSizedBox(heightValue: 15.0),
        SizedBox(
          height: 45,
          child: TextFormFeildWidget(
            keyboardType: TextInputType.text,
            controller: null,
            hintText: "",
            validator: (inPutText) {
              return "Please fill the required field";
            },
            textCapitalization: TextCapitalization.words,
          ),
        ),
        heightSizedBox(heightValue: 15.0),
        SaveButton(height: sWidth! / 7, width: sWidth! / 1.3),
        heightSizedBox(heightValue: 15.0),
      ],
    );
  }
}

// ignore: must_be_immutable
class SaveButton extends StatelessWidget {
  SaveButton({super.key, required this.height, required this.width});

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
        data: "SAVE",
        onTap: () {},
        fontSize: sWidth! / 28,
        borderRadius: 10,
      ),
    );
  }
}
