import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/components/bussiness_profile_cmp/business_profile_cmp.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/Ink_well_button.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';

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
                PageMainHeadding(textSize: 18.0),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: BusinessTextFieldNames().BusinessTextFieldName[1],
                    hintStyle: BusinessProfileTextStyleAndDecoration()
                        .ProfileHintTextStyle(15),
                  ),
                  keyboardType: TextInputType.text,
                  style: BusinessProfileTextStyleAndDecoration()
                      .ProfileTextStyle(15),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: BusinessTextFieldNames().BusinessTextFieldName[2],
                    hintStyle: BusinessProfileTextStyleAndDecoration()
                        .ProfileHintTextStyle(15),
                  ),
                  style: BusinessProfileTextStyleAndDecoration()
                      .ProfileTextStyle(15),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: BusinessTextFieldNames().BusinessTextFieldName[3],
                    hintStyle: BusinessProfileTextStyleAndDecoration()
                        .ProfileHintTextStyle(15),
                  ),
                  style: BusinessProfileTextStyleAndDecoration()
                      .ProfileTextStyle(15),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: BusinessTextFieldNames().BusinessTextFieldName[4],
                    hintStyle: BusinessProfileTextStyleAndDecoration()
                        .ProfileHintTextStyle(15),
                  ),
                  style: BusinessProfileTextStyleAndDecoration()
                      .ProfileTextStyle(15),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: BusinessTextFieldNames().BusinessTextFieldName[5],
                    hintStyle: BusinessProfileTextStyleAndDecoration()
                        .ProfileHintTextStyle(15),
                  ),
                  style: BusinessProfileTextStyleAndDecoration()
                      .ProfileTextStyle(15),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: BusinessTextFieldNames().BusinessTextFieldName[6],
                    hintStyle: BusinessProfileTextStyleAndDecoration()
                        .ProfileHintTextStyle(15),
                  ),
                  style: BusinessProfileTextStyleAndDecoration()
                      .ProfileTextStyle(15),
                ),
                heightSizedBox(heightValue: 18.0),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: BusinessTextFieldNames().BusinessTextFieldName[7],
                    hintStyle: BusinessProfileTextStyleAndDecoration()
                        .ProfileHintTextStyle(15),
                  ),
                  style: BusinessProfileTextStyleAndDecoration()
                      .ProfileTextStyle(15),
                ),
                heightSizedBox(heightValue: 40.0),
                Container(
                  width: sWidth! / 1.3,
                  height: sWidth! / 7,
                  decoration: BoxDecoration(
                    color: AppButtonColors().buttonColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: InkWellButtonWidget(
                    borderRadius: 12,
                    data: "SAVE",
                    fontSize: sWidth! / 28,
                    onTap: () {
                      // context.read<BusinessProfileBloc>().add(
                      //     SaveBusinessProfile(
                      //         pro: Profiledata(
                      //             companyName: , gstNumber: ,)));
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
