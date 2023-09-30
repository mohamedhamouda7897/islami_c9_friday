import 'package:flutter/material.dart';
import 'package:islami_c9_frid/providers/myProvider.dart';
import 'package:provider/provider.dart';

class ThemeSheet extends StatelessWidget {
  const ThemeSheet({Key? key}) : super(key: key);

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
              pro.changeMode(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Light",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 20
                  ),
                ),
                Visibility(
                  visible: pro.mode == ThemeMode.light,
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
              pro.changeMode(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 20
                  ),
                ),
                Visibility(
                  visible: pro.mode == ThemeMode.dark,
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
