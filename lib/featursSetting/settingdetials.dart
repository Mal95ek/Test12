import 'package:flutter/material.dart';
import 'package:great_tafsirs1/featursSetting/setting.dart';
class SettingDetials extends StatefulWidget {
  @override
  _SettingDetialsState createState() => _SettingDetialsState();
}
class _SettingDetialsState extends State<SettingDetials> {
  List<Map<String, int>> detialLisin = [
    {'محمدالصديق المشناوي': 0},
    {'محمود الحصري': 0},
    {'عبد الباسط عبد الصمد': 0}
  ];
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;
    return Column(children: [
      Container(
        width: _width,
          height: _highet *0.10,
          padding: EdgeInsets.only(top: _highet *0.10)
      ),

      AlertDialog(
          titlePadding: EdgeInsets.only(top: 0, left: 0),
   backgroundColor: Colors.white,
          elevation: 90,
          title: Row(
              children: [
                InkWell(child:Row(children: [ Image.asset('images/left.png'),   Text("الاعدادت",style: TextStyle(fontSize: 12),),],), onTap: (){
                Navigator.pop(context);
                showDialog(context: context, builder: (context)=> Setting());
                },),

            SizedBox(width: _width *0.11,),
            Container(
              padding: EdgeInsets.only(top: _highet *0.01),
              child: Text(
                'اخيتار القارى',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
              ),
            ),

          ],),
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
                    child: Directionality( textDirection: TextDirection.rtl, child:   ListTile(
                      leading: Text(title.keys.first.toString()),
                      trailing: title.values.first == 1?Icon(Icons.check):null,
                    ) )))
              ],
            )
          ],
        ),

    ]);
  }
}
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
//
// children: [
//
// if (title.values.first == 1)  Icon(Icons.check),
// Tab(text: title.keys.first),
//
// ],
// )