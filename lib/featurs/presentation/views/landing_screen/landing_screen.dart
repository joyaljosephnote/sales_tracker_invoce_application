import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_tracker/featurs/business_logics/landing_page_bloc/landing_page_bloc.dart';
import 'package:sales_tracker/featurs/presentation/views/bills_screen/bill_screen.dart';
import 'package:sales_tracker/featurs/presentation/views/home_screen/home_screen.dart';
import 'package:sales_tracker/featurs/presentation/views/inventory_screen/Inventory_screen.dart';
import 'package:sales_tracker/featurs/presentation/views/more/more_screen.dart';
import 'package:sales_tracker/featurs/presentation/views/parties/parties_screen.dart';

List<BottomNavigationBarItem> bottomnavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.bookmark),
    label: 'Bills',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.square),
    label: 'Inventory',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.group),
    label: 'Parties',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.window),
    label: 'More',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  HomeScreen(),
  BillScreen(),
  InventoryScreen(),
  PartiesScreen(),
  MoreScreen(),
];

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomnavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) => BlocProvider.of<LandingPageBloc>(context)
                .add(TabChange(tabIndex: index)),
          ),
        );
      },
    );
  }
}
