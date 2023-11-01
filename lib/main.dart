import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_tracker/featurs/business_logics/landing_page_bloc/landing_page_bloc.dart';
import 'package:sales_tracker/featurs/presentation/routes/generated_rountes.dart';
import 'package:sales_tracker/featurs/presentation/views/landing_screen/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LandingPageBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sales Tracker - Invoice application',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator().generateRoute,
        home: const LandingScreen(),
      ),
    );
  }
}
