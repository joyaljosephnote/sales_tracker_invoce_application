import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/components/inventory_screen_cmp/inventory_screen_cmp.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InventorySectionHeadings().InventorySectionHeading(),
        actions: const [
          AppBarButton(),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ProductList(),
        ),
      ),
      floatingActionButton: const InventoryFlotingButton(),
    );
  }
}
