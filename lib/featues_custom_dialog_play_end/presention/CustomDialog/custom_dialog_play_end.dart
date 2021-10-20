import 'package:flutter/material.dart';

class CustomDialogPlayAll extends StatefulWidget {
  @override
  _CustomDialogPlayAllState createState() => _CustomDialogPlayAllState();
}

class _CustomDialogPlayAllState extends State<CustomDialogPlayAll> {
  int _value = 1;
  List<Map<int, String>> listening = [
    {0: 'الفاتحه'},
    {1: 'استماع لصفحه كامله'},
    {2: 'استماع للحزب '},
    {3: 'استماع للجزـ '},
  ];
  // ignore: non_constant_identifier_names
  Map<String, bool> Lisining = {
    'تكرار الاستماع': false,
    'الاستماع من الصفحه الحاليه': false,
  };
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: AlertDialog(
          title: Text(
            'الاستماع',
            textAlign: TextAlign.center,
          ),
          content:
              Text("الرجاء الاختيار الماده الماده المراد سماعها لتلاوتها "),
          actions: [
            Column(
              children: [
                ...listening
                    .map((e) => RadioListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        title: Text(e.values.first),
                        value: e.keys.first,
                        groupValue: _value,
                        onChanged: (int? value) =>
                            setState(() => _value = value!)))
                    .toList(),
                ...Lisining.keys.map((String key) {
                  return new CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: new Text(key),
                    value: Lisining[key],
                    onChanged: (value) {
                      setState(() {
                        Lisining[key] = value as bool;
                      });
                      setState(() {});
                    },
                  );
                }).toList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'موافق',
                        )),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('الغاء'),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
