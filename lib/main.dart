import 'package:flutter/material.dart';
import 'package:islami_c9_frid/hadeth_details.dart';
import 'package:islami_c9_frid/home.dart';
import 'package:islami_c9_frid/myThemeData.dart';
import 'package:islami_c9_frid/providers/myProvider.dart';
import 'package:islami_c9_frid/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider<MyProvider>(
      create: (BuildContext context)=>MyProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      locale: Locale(pro.language),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: pro.mode,
    );
  }
}
