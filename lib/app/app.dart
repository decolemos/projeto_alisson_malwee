import 'package:alisson_cuzao/app/app_routes.dart';
import 'package:alisson_cuzao/pages/home_page.dart';
import 'package:alisson_cuzao/providers/item_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemList(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          AppRoutes.home:(context) => const HomePage()
        },
        
      ),
    );
  }
}