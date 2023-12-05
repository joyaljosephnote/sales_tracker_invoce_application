import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/parties_screen/customer_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/parties_screen/vendors_screen.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';

class ScreenTabViewInpartiesScreen extends StatelessWidget {
  const ScreenTabViewInpartiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(sWidth!, sHeight!),
          child: const TabBar(
              labelStyle: TextStyle(),
              indicatorColor: Colors.green,
              tabs: [
                Tab(child: Text('Customer')),
                Tab(
                  child: Text('Vendors'),
                ),
              ]),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TabBarView(children: [CustomerScreen(), VendorsScreen()]),
        ),
      ),
    );
  }
}
