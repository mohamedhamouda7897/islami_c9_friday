import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c9_frid/myThemeData.dart';
import 'package:islami_c9_frid/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SruaDetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/background.png",
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 12,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: MyThemeData.primaryColor)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  indent: 40,
                  endIndent: 40,
                  thickness: 1,
                  color: MyThemeData.primaryColor,
                ),
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      verses[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  );
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // int x=5;
  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
