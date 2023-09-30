import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c9_frid/hadeth_details.dart';
import 'package:islami_c9_frid/hadeth_model.dart';
import 'package:islami_c9_frid/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_bg.png"),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.ahadeth,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                color: MyThemeData.primaryColor,
                endIndent: 40,
                indent: 40,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                        arguments: allAhadeth[index]);
                  },
                  child: Text(
                    allAhadeth[index].name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                );
              },
              itemCount: allAhadeth.length,
            ),
          )
        ],
      ),
    );
  }

  void loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadethFile) {
      List<String> ahadethList = ahadethFile.split("#");

      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethLines = hadethOne.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
      setState(() {});
    }).catchError((e) {
      print(e.toString());
    });
  }
}
