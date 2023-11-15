import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/Ink_well_button.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class BusinessProfileScreen extends StatelessWidget {
  const BusinessProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: textHeding1(data: "", textSize: 18),
      //   centerTitle: true,
      //   leading: IconButton(
      //     onPressed: () =>
      //         Navigator.popAndPushNamed(context, Routes.otpVerificationScreen),
      //     icon: const Icon(
      //       CupertinoIcons.back,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                heightSizedBox(heightValue: 40.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: textHeding1(
                    data: 'Enter your company details',
                    textSize: 18,
                  ),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.sentences,
                  decoration: const InputDecoration(
                    focusColor: Colors.amber,
                    border: UnderlineInputBorder(),
                    hintText: "Company Name",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.characters,
                  decoration: const InputDecoration(
                    focusColor: Colors.amber,
                    border: UnderlineInputBorder(),
                    hintText: "GST Number",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.characters,
                  decoration: const InputDecoration(
                    focusColor: Colors.amber,
                    border: UnderlineInputBorder(),
                    hintText: "Street Address",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.characters,
                  decoration: const InputDecoration(
                    focusColor: Colors.amber,
                    border: UnderlineInputBorder(),
                    hintText: "City",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.characters,
                  decoration: const InputDecoration(
                    focusColor: Colors.amber,
                    border: UnderlineInputBorder(),
                    hintText: "State",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    focusColor: Colors.amber,
                    border: UnderlineInputBorder(),
                    hintText: "ZIP Code",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    focusColor: Colors.amber,
                    border: UnderlineInputBorder(),
                    hintText: "Contact Number",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                heightSizedBox(heightValue: 40.0),
                Container(
                  width: sWidth! / 1.3,
                  height: sWidth! / 7,
                  decoration: const BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: InkWellButtonWidget(
                    borderRadius: 12,
                    data: "SAVE",
                    fontSize: sWidth! / 28,
                    onTap: () {
                      Navigator.popAndPushNamed(context, Routes.landingScreen);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
