import 'package:flutter/material.dart';
import 'package:islami_c9_frid/providers/myProvider.dart';
import 'package:islami_c9_frid/theme_sheet.dart';
import 'package:provider/provider.dart';

import '../language_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text(
           "Language",
           style: Theme.of(context).textTheme.bodySmall?.copyWith(
             fontWeight: FontWeight.bold,
             fontSize: 25
           ),
         ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showBottomSheet(
                  context: context,
                  builder: (context)=>LanguageSheet());
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                border: Border.all(
                  color: Theme.of(context).colorScheme.onBackground,
                  width: 2
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pro.language == "en"?"English":"Arabic",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Theme.of(context).colorScheme.onBackground,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "Mode",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showBottomSheet(
                  context: context,
                  builder: (context)=>ThemeSheet());
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onBackground,
                      width: 2
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pro.mode == ThemeMode.light ?"Light":"Dark",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Theme.of(context).colorScheme.onBackground,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
