import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/components/parties_screen_cmp/customer_screen_cmp.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: const CustomerScreenFlotingButton(),
    );
  }
}
