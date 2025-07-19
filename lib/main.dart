import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping/stack.dart';
import 'package:shopping/views/page_1/page_1_desktop.dart';
import 'package:shopping/views/page_1/page_mobile.dart';
import 'package:shopping/views/page_2/page_2_desktop.dart';
import 'package:shopping/views/page_2/page_2_mobile.dart';
import 'package:shopping/views/page_3/page_3_desktop.dart';
import 'package:shopping/views/page_4/page-4-desktop.dart';
import 'package:shopping/views/page_6/page_6_desktop.dart';
import 'package:shopping/views/page_7/page-7-desktop.dart';


import 'controller/app_router/app_router.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Page2Mobile(),//Page6Desktop()//Page5Desktop()//Page4Desktop()//Page3Desktop()//PortfolioApp()//Page1screen()//Staclclass()//MediaScreen()//Page1screen()//Mainscreen()//HomeScreen1()//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

