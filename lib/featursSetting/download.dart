import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  _CustomDialogPlayAllState createState() => _CustomDialogPlayAllState();
}

class _CustomDialogPlayAllState extends State<Download> {
  final _myList = ['الكوثر', 'الفاتحه', 'البقره', 'الانعام', 'الانعام'];
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Column(children: [
          Container(
              height: _highet * 0.70,
              width: _width * 0.95,
              child: AlertDialog(
                titlePadding: EdgeInsets.only(top: 0, left: 0),
                elevation: 90,
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  height: _highet * 0.077,
                  color: Color(0xffF8F8FF),
                  child: Text(
                    'تنزيل السور ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Container(
                        height: _highet * 0.20,
                        width: _width * 0.55,
                        child: ListView.separated(
                            itemCount: _myList.length,
                            // The list items
                            itemBuilder: (context, index) {
                              return Text(
                                _myList[index],
                                style: TextStyle(fontSize: 14),
                              );
                            },
                            // The separators
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: Colors.black,
                              );
                            }),
                      )),
                ],
              )),
        ]));
  }
}
