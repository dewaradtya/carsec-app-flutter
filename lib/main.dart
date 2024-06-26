import 'package:uji_level/Provider/cart_provider.dart';
import 'package:uji_level/Provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'screens/nav_bar_screen.dart';
import 'screens/landing_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CartProvider()),
          ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Carsec.co",
          theme: ThemeData(
            textTheme: GoogleFonts.mulishTextTheme(),
          ),
          home: const GetStartedScreen(),
        ),
      );
}
