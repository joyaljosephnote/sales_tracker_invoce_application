import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/components/bills_screen_cmp/bills_screen_cmp.dart';

class BillScreen extends StatelessWidget {
  const BillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Center(child: ScreenTabViewInBillScreen())),
    );
  }
}
