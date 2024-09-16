import 'package:ecommerce/model/living_proc.dart';
import 'package:ecommerce/view/pages/home.dart';
import 'package:ecommerce/view/pages/living_tab/search_card_de.dart';
import 'package:ecommerce/view/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: ((context) => LivingProcess())),
        ],
        child: MaterialApp(
          routes: {
            'home': (context) => Home(),
            'searchcard': (context) => SearchCardDetails(),
          },
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Splash(),
        ));
  }
}
