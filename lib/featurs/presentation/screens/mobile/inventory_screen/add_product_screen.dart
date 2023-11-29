import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/components/inventory_screen_cmp/add_product_cmp.dart';

class AddNewProductScreen extends StatelessWidget {
  const AddNewProductScreen({super.key});

  //how to navigate to previos screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheamColors().scaffoldBackgroundColor,
        title: AddProductScreenHeading().AddProductHeading(),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(13),
            child: ProductFormFeild(),
          ),
        ),
      ),
    );
  }
}
