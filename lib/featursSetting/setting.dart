import 'package:flutter/material.dart';
import 'package:great_tafsirs1/featursSetting/settingdetials.dart';

import 'Choose an interpretation.dart';
import 'dowanlodspecefic.dart';
import 'download.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<String> listining = [
    'اخيتار قارئ',
    'تنزيل السور',
    'تنزيل الصور اليت تحتوي ايات ',
    'اختيار التفسير'
  ];
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(height: _highet * 0.10,
          width: _width * 0.95,),
      AlertDialog(
        titlePadding: EdgeInsets.only(top: 0, left: 0),
        elevation: 90,
        title: Container(
          padding: EdgeInsets.only(bottom: _highet *0.01),
          color: Colors.grey.shade200,
          child: Text(
            'الاعدادت',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                ...listining.map((title) => MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);

                      if (title == listining[0]) {
                        showDialog(
                            context: context,
                            builder: (context) => SettingDetials());

                      } else if (title == listining[1]) {
                        showDialog(
                            context: context, builder: (context) => Download());
                      } else if (title == listining[2]) {
                        showDialog(
                            context: context,
                            builder: (context) => DownloaSpefic());
                      } else if (title == listining[3]) {
                        showDialog(
                            context: context,
                            builder: (context) => SettingDetialstfseer());
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,children: [Tab(text: title,),Divider(color: Colors.black,)],)))
              ],
            )

          ],
      )
    ]);

  }
}

Widget detial() {
  List detialLisin = ['محمد الصديق ', 'محمود الصحري ', 'عبدالباسط عبد الصمد '];
  // ignore: unused_local_variable
  var isCheckedCell = false;
  return Column(children: [
    AlertDialog(
      title: Text(
        'الاعدادات',
        textAlign: TextAlign.center,
      ),
      actions: [
        Column(
          children: [
            ...detialLisin.map((title) => MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.check),
                    Tab(text: title),
                  ],
                )))
          ],
        )
      ],
    )
  ]);
}
