import 'package:flutter/material.dart';

class Score extends StatefulWidget {
  @override
  _SeaarchState createState() => _SeaarchState();
}

class _SeaarchState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Column(children: [
          Container(
              height: _highet * 0.95,

              child: AlertDialog(
                titlePadding: EdgeInsets.only(top: 0, left: 0),
                elevation: 90,
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  height: _highet * 0.2,
                  color: Color(0xffF8F8FF),
                  child: Text(
                    'العلامات',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: [
                  Container(
                    height: _highet * 0.20,
                    width: _width * 0.40,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    color: Color.fromRGBO(218, 236, 248,1
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Image.asset('images/delete.png')],
                    ),
                  )
                ],
              )),
        ]));
  }
}
