import 'package:flutter/material.dart';

class DownloaSpefic extends StatefulWidget {
  _CustomDialogPlayAllState createState() => _CustomDialogPlayAllState();
}

class _CustomDialogPlayAllState extends State<DownloaSpefic> {
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
                titlePadding: EdgeInsets.only(top: 10, left: 0,bottom: _highet * 0.10),
                elevation: 90,
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  height: _highet * 0.077,
                  color: Color(0xffF8F8FF),
                  child: Text(
                    'قواـم الايات',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: [
                  Container(
                    height: _highet * 0.20,
                    width: _width * 0.55,
                  )
                ],
              )),
        ]));
  }
}
