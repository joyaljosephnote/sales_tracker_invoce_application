import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/components/parties_screen_cmp/parties_screen_cmp.dart';

class PartiesScreen extends StatelessWidget {
  const PartiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ScreenTabViewInpartiesScreen(),
      ),
    );
  }
}
