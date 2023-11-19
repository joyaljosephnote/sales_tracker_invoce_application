import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class MoreScreenHeadings {
  Text moreScreenAppbarHeading() {
    return const Text(
      "Hello Tech Malayalam",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
    );
  }

  // ignore: non_constant_identifier_names
  Container ProfileHeadings() =>
      Container(child: textHeding1(data: "Profile", textSize: 15));
  // ignore: non_constant_identifier_names
  Container SettingsHeadings() =>
      Container(child: textHeding1(data: "Settings", textSize: 15));
  // ignore: non_constant_identifier_names
  Container SupportHeadings() =>
      Container(child: textHeding1(data: "Support", textSize: 15));
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "Company Details",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
              heightSizedBox(heightValue: 8.0),
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "User Profile",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
              heightSizedBox(heightValue: 8.0),
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "User Roles",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingsSection extends StatelessWidget {
  const SettingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "Document Settings",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
              heightSizedBox(heightValue: 8.0),
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "Invoice Templates",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
              heightSizedBox(heightValue: 8.0),
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "Bank",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SupportSection extends StatelessWidget {
  const SupportSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "Help & Support",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
              heightSizedBox(heightValue: 8.0),
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "Tutorials",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
              heightSizedBox(heightValue: 8.0),
              GestureDetector(
                onTap: () {},
                child: MoreScreenSectionButton(
                    heading: "Feedback",
                    fontSize: 14,
                    icon: Ionicons.arrow_forward_circle),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class MoreScreenSectionButton extends StatelessWidget {
  MoreScreenSectionButton(
      {super.key,
      required this.heading,
      required this.fontSize,
      required this.icon});

  String heading;
  double fontSize;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        textHeding2(data: heading, textSize: fontSize),
        Icon(
          icon,
          color: AppButtonColors().buttonColor,
        )
      ]),
    );
  }
}
