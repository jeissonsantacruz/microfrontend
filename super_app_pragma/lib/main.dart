import 'package:flutter/material.dart';
import 'package:mf_home/mf_home.dart';
import 'package:provider/provider.dart';
import 'package:super_app_pragma/infrastructure/model/data_model.dart';
import 'package:super_app_pragma/ui/routes/app_router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.homeRoute,
      routes: AppRouter().routes(),
    );
  }
}
