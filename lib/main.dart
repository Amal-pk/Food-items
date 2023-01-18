import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_items/controller/bottomnavigationbar/bottomnavigation.dart';
import 'package:food_items/controller/homepage/homepagecontroller.dart';
import 'package:food_items/controller/login/auth_login_provider.dart';
import 'package:food_items/controller/login/auth_registration_provider.dart';
import 'package:food_items/view/login/signup/login_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => FirebaseAuthLogInProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => FirebaseAuthSignUPProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => BottomNavigationController()),
        ),
        ChangeNotifierProvider(
          create: ((context) => HomePageController()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ScreenLogin(),
      ),
    );
  }
}
