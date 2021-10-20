import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AyaDetials extends StatefulWidget {
  const AyaDetials({Key? key}) : super(key: key);

  @override
  _AyaDetialsState createState() => _AyaDetialsState();
}

class _AyaDetialsState extends State<AyaDetials> {
  @override
  Widget build(BuildContext context) {
    double _highet = MediaQuery.of(context).size.height;
    return AlertDialog(
      titlePadding: EdgeInsets.only(top: 0, left: 0),
      elevation: 90,
      title: Container(
        padding: EdgeInsets.only(top: 10),
        height: _highet * 0.1,
        color: Color(0xffF8F8FF),
        child: Text(
          'قوائم البحث',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      content: Text(
        'اسم القائمه ',
      ),
      contentPadding: EdgeInsets.only(bottom: 0, left: 100),
      actions: [
        SingleChildScrollView(child: TextField(
          decoration: const InputDecoration(fillColor: Colors.greenAccent),
        ), ),

        SizedBox(
          height: _highet *0.060
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
                onPressed: () {},
                child: Text(
                  'الغاء',
                  style: TextStyle(color: Colors.blue),
                )),
            MaterialButton(
                onPressed: () {},
                child: Text(
                  'حفظ',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        )
      ],
    );
  }
}
