import 'package:flutter/material.dart';

class CustomDialogPlay extends StatefulWidget {
  _CustomDialogPlayAllState createState() => _CustomDialogPlayAllState();
}

class _CustomDialogPlayAllState extends State<CustomDialogPlay> {
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'التنبيه',
        textAlign: TextAlign.center,
      ),
      content: Text(
          'لم يتم تنزيل السور المراد الاستماع الى أياتها مسبقا هل تريد تنزيل السور'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
                onPressed: () {},
                child: Text(
                  'النعم',
                )),
            MaterialButton(
              onPressed: () {},
              child: Text('لا'),
            )
          ],
        ),
      ],
    );
  }
}
