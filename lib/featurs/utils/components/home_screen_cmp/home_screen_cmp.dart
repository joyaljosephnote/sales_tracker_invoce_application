import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(value: "Today", child: Text("Today")),
    const DropdownMenuItem(value: "Yesterday", child: Text("Yesterday")),
    const DropdownMenuItem(value: "Last Week", child: Text("Last Week")),
    const DropdownMenuItem(value: "This Month", child: Text("This Month")),
  ];
  return menuItems;
}

// ignore: non_constant_identifier_names

class HomeScreenHeadings {
  // ignore: non_constant_identifier_names
  Container CreateHeadings() =>
      Container(child: textHeding1(data: "Create", textSize: 15));
  // ignore: non_constant_identifier_names
  Container EasyOperationsHeadings() =>
      Container(child: textHeding1(data: "Easy Operations", textSize: 15));
  // ignore: non_constant_identifier_names
  Container QuickAccessHeadings() =>
      Container(child: textHeding1(data: "Quick Access", textSize: 15));
}

class CreateMenuNavigations extends StatelessWidget {
  const CreateMenuNavigations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      children: [
        MenuIconsWidget(
          buttonName: "Invoice",
          iconSymbole: Ionicons.document_text_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Purchase",
          iconSymbole: Ionicons.cart_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Quotation",
          iconSymbole: Ionicons.newspaper_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Pur.Order",
          iconSymbole: Ionicons.bag_add_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Credit Note",
          iconSymbole: Ionicons.create_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Product",
          iconSymbole: Ionicons.cube_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Expenses",
          iconSymbole: Ionicons.share_outline,
          onTap: () {},
        ),
      ],
    );
  }
}

class EasyOperationsMenu extends StatelessWidget {
  const EasyOperationsMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      children: [
        MenuIconsWidget(
          buttonName: "Change",
          iconSymbole: Ionicons.document_text_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Transfer",
          iconSymbole: Ionicons.cart_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Incoming",
          iconSymbole: Ionicons.newspaper_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Receipts",
          iconSymbole: Ionicons.bag_add_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "More",
          iconSymbole: Ionicons.create_outline,
          onTap: () {},
        ),
      ],
    );
  }
}

class QuickAccessMenu extends StatelessWidget {
  const QuickAccessMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      children: [
        MenuIconsWidget(
          buttonName: "Report",
          iconSymbole: Ionicons.document_text_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Analytics",
          iconSymbole: Ionicons.cart_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Doc Settings",
          iconSymbole: Ionicons.newspaper_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Help",
          iconSymbole: Ionicons.bag_add_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Day Book",
          iconSymbole: Ionicons.create_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Balance",
          iconSymbole: Ionicons.create_outline,
          onTap: () {},
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class MenuIconsWidget extends StatelessWidget {
  MenuIconsWidget(
      {super.key,
      required this.buttonName,
      required this.iconSymbole,
      required this.onTap});

  String buttonName;
  IconData iconSymbole;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconSymbole,
            size: 28,
            color: AppButtonColors().buttonSplashColor,
          ),
          heightSizedBox(heightValue: 8.0),
          Text(
            buttonName,
            style: const TextStyle(
                color: Colors.black, fontSize: 10, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
