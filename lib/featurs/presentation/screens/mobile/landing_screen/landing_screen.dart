import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_tracker/featurs/business_logics/landing_page_bloc/landing_page_bloc.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/bills_screen/bill_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/home_screen/home_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/inventory_screen/inventory_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/more_screen/more_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/parties_screen/parties_screen.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';

List<BottomNavigationBarItem> bottomnavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home_rounded),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.bookmark_rounded),
    label: 'Bills',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.add_box_rounded),
    label: 'Inventory',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.group_rounded),
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
            type: BottomNavigationBarType.fixed,
            currentIndex: state.tabIndex,
            selectedItemColor: primaryColor,
            selectedFontSize: text9,
            unselectedFontSize: text9,
            showUnselectedLabels: true,
            unselectedItemColor: navUnselectedColor,
            onTap: (index) => BlocProvider.of<LandingPageBloc>(context)
                .add(TabChange(tabIndex: index)),
          ),
        );
      },
    );
  }
}
