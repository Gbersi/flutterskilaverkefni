import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(192, 6, 82, 172),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness:Brightness.dark ,
  seedColor:Color.fromARGB(255, 34, 35, 43),
);

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
 // SystemChrome.setPreferredOrientations([
   // DeviceOrientation.portraitUp,
 // ]).then((fn){
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kDarkColorScheme.primaryContainer,
                foregroundColor: kDarkColorScheme.onPrimaryContainer
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          colorScheme:kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
            elevation: 20,
          ),
          cardTheme: const CardTheme().copyWith(color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            elevation: 20,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme:ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
        ),
        themeMode: ThemeMode.system,
        home:const Expenses(),
      ),
    );
   // });

}

