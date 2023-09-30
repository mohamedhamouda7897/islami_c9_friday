import 'package:flutter/material.dart';
import 'package:islami_c9_frid/providers/myProvider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: (){
              pro.changLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 20
                  ),
                ),
                Visibility(
                  visible: pro.language == "en",
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).primaryColor,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (){
              pro.changLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Arabic",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 20
                  ),
                ),
                Visibility(
                  visible: pro.language == "ar",
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).primaryColor,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
