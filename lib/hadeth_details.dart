import 'package:flutter/material.dart';
import 'package:islami_c9_frid/hadeth_model.dart';

import 'myThemeData.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
        decoration: const BoxDecoration(
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
              elevation: 18,
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
                        args.content[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    );
                  },
                  itemCount: args.content.length,
                ),
              ),
            ),
          ),
        ));
  }
}
