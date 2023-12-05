import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/widgets/floting_action_button_widget.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';

class InventorySectionHeadings {
  // ignore: non_constant_identifier_names
  Text InventorySectionHeading() {
    return const Text(
      "Product and Services",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
    );
  }
}

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {}, icon: const Icon(Ionicons.search_outline));
  }
}

class InventoryFlotingButton extends StatelessWidget {
  const InventoryFlotingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlotingButtonWidget(
        buttonName: "Add Product",
        onPresed: () {
          Navigator.pushNamed(context, Routes.addNewProductScreen);
        },
        icon: Icons.add);
  }
}

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          height: 35,
          decoration: BoxDecoration(
              color: AppTheamColors().textFeildColor,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Halwa 1KG"),
                Text("₹ 380.00"),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => heightSizedBox(heightValue: 5.0),
      itemCount: 15,
    );
  }
}
