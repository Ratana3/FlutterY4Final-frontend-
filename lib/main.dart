import 'package:flutter/material.dart';
import 'package:foodapp/auth/login_or_register.dart';
import 'package:foodapp/models/restaurant.dart';
import 'package:foodapp/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
        child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}