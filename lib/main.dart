import 'package:flutter/material.dart';
import 'package:flutter_flipkart/pages/Home_Page.dart';
import 'package:flutter_flipkart/pages/Login_Page.dart';

void main() {
  runApp(MyApp());
  {}
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      themeMode: ThemeMode.light, // thememode chooses between lighttheme and darktheme (only if the properties of dark theme is provided)
     // theme: ThemeData(primarySwatch: Colors.deepOrange),    //for describing lighttheme properties we use "theme" widget and themedata and colors is a library of material package
      darkTheme: ThemeData(                           // for providing the properties of darktheme we use "darktheme" themedata and brightness(we can also use primaryswatch and others properties)
          brightness: Brightness.dark),
          initialRoute: "/home",    // is used to decide which route will be the homepage(initial screen)
          routes: {                          // Route is same as request Mapping and has values in key:value pair
            "/": (context) => LoginPage(), // This is the default page that gets lauched beause of "/", basically this the homepage of the app, Here we are creating an object of LoginPage Class , "/" is the name:, "LoginPage" is the value: and "context" is the reference variable
            "/home" : (context) => HomePage()
          },
    );
  }
}
