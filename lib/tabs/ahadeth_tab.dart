import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c9_frid/hadeth_model.dart';

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

    return Container(
      color: Colors.purple,
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
        print(title);
        print(i);
      }
      setState(() {});
    }).catchError((e) {
      print(e.toString());
    });
  }
}
