// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/bills_screen/more_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/bills_screen/purchase_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/bills_screen/sales_screen.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';

class ScreenTabViewInBillScreen extends StatelessWidget {
  const ScreenTabViewInBillScreen({super.key});

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
                Tab(child: Text('Sales')),
                Tab(
                  child: Text('Purchase'),
                ),
                Tab(
                  child: Text('More'),
                )
              ]),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TabBarView(
              children: [SaleScreen(), PurchaseScreen(), BillMoreScreen()]),
        ),
      ),
    );
  }
}
