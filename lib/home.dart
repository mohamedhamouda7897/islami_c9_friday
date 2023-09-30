import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c9_frid/myThemeData.dart';
import 'package:islami_c9_frid/tabs/ahadeth_tab.dart';
import 'package:islami_c9_frid/tabs/quran_tab.dart';
import 'package:islami_c9_frid/tabs/radio_tab.dart';
import 'package:islami_c9_frid/tabs/sebha_tab.dart';
import 'package:islami_c9_frid/tabs/settings_tab.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Theme.of(context).colorScheme.brightness==Brightness.light
            ?"assets/images/background.png"
            :"assets/images/bg.png",
            width: double.infinity, fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            // SOLID
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor: Theme.of(context).colorScheme.primary,
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "َQuran",
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                  ),
                  label: "Sebha",
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio",
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "Ahadeth",
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: Theme.of(context).colorScheme.primary),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    const SebhaTab(),
    const RadioTab(),
    AhadethTab(),
    const SettingsTab()
  ];
}
