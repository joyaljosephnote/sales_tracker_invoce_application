import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/box_decoration_widget.dart';
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
  AppBar homeAppBar() {
    return AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: textHeding1(data: "Hello Tech Malayalam", textSize: 18));
  }

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

class CompanyName extends StatelessWidget {
  const CompanyName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: textHeding1(data: "Hello Tech Malayalam", textSize: 16));
  }
}

class SalesAndPurchaseFilter extends StatelessWidget {
  const SalesAndPurchaseFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  hint: textHeding2(data: "Select Filter", textSize: 14),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sales",
                        style: SalesAndPurchaseFilterTextStyle(),
                      ),
                      Text(
                        "₹ 100.00",
                        style: SalesAndPurchaseTextStyle(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Purchase",
                        style: SalesAndPurchaseFilterTextStyle(),
                      ),
                      Text(
                        "₹ 849.00",
                        style: SalesAndPurchaseTextStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextStyle SalesAndPurchaseFilterTextStyle() {
    return TextStyle(
        color: AppTextColors().textFilterColor, fontWeight: FontWeight.bold);
  }

  // ignore: non_constant_identifier_names
  TextStyle SalesAndPurchaseTextStyle() {
    return TextStyle(
        color: AppTextColors().textSecondaryColor, fontWeight: FontWeight.bold);
  }
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
          onTap: () {
            Navigator.pushNamed(context, Routes.invoiceCreationScreen);
          },
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
          onTap: () {
            Navigator.pushNamed(context, Routes.addNewProductScreen);
          },
        ),
        MenuIconsWidget(
          buttonName: "Expenses",
          iconSymbole: Ionicons.server_outline,
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
          iconSymbole: Ionicons.repeat_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Transfer",
          iconSymbole: Ionicons.swap_horizontal_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Incoming",
          iconSymbole: Ionicons.download_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Receipts",
          iconSymbole: Ionicons.reader_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "More",
          iconSymbole: Ionicons.list_outline,
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
          iconSymbole: Ionicons.documents_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Analytics",
          iconSymbole: Ionicons.trending_up_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Doc Settings",
          iconSymbole: Ionicons.receipt_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Help",
          iconSymbole: Ionicons.help_circle_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Day Book",
          iconSymbole: Ionicons.book_outline,
          onTap: () {},
        ),
        MenuIconsWidget(
          buttonName: "Balance",
          iconSymbole: Ionicons.wallet_outline,
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
      onTap: onTap,
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
            style: TextStyle(
                color: AppTextColors().textSecondaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
