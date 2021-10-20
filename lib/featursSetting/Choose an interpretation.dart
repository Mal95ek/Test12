import 'package:flutter/material.dart';

class SettingDetialstfseer extends StatefulWidget {
  @override
  _SettingDetialsState createState() => _SettingDetialsState();
}

class _SettingDetialsState extends State<SettingDetialstfseer> {
  List<Map<String, int>> detialLisin = [
    {'ارشاد العقل السليم': 0},
    {'اضواـ البيان في تفسير القرآن': 0},
    {'عبد الباسط عبد الصمد': 0}
  ];
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;
    return Column(children: [
      Container(
        padding: EdgeInsets.only(top: _highet *0.12),
        child: AlertDialog(
        title: Text(
          'الاعدادات',
          textAlign: TextAlign.center,
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ...detialLisin.map((title) => MaterialButton(
                  onPressed: () {
                    setState(() {
                      List<Map<String, int>> detialLisin1 = [];
                      detialLisin.forEach((element) {
                        if (title != element) {
                          element = {element.keys.first: 0};
                          detialLisin1.add(element);
                        } else {
                          element = {element.keys.first: 1};
                          detialLisin1.add(element);
                        }
                      });
                      detialLisin.clear();
                      detialLisin1.forEach((element) {
                        detialLisin.add(element);
                      });
                    });
                  },
                  child:   Directionality( textDirection: TextDirection.rtl, child:   ListTile(
                    leading: Text(title.keys.first.toString()),
                    trailing: title.values.first == 1?Icon(Icons.check):null,
                  ) )
              )
              )
            ],
          )
        ],
      ) ,)

    ]);
  }
}