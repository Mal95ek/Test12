import 'package:flutter/material.dart';

class Seaarch extends StatefulWidget {
  @override
  _SeaarchState createState() => _SeaarchState();
}

class _SeaarchState extends State<Seaarch> {
  final controler = TextEditingController();
  String? text1;
  bool isselect = false;
  bool isselect2 = false;
  bool isselect3 = false;
  bool isselect4 = false;
  void initState() {
    isselect = true;
    super.initState();
    controler.addListener(() {});
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Container(
            height: _highet * 0.95,
            width: _width,
            child: AlertDialog(
                titlePadding: EdgeInsets.only(top: 0, left: 0),
                elevation: 90,
                title: Container(
                  padding: EdgeInsets.only(top: _highet *0.01),
                  color: Colors.grey.shade200,
                  child: Text(
                    ' البحث في القرآن',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: [
                  Column(
                    children: [
                      Container(
                        height: _highet * 0.060,
                        child: TextFormField(
                          controller: controler,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'عل اقل ثلاثه اخرف',alignLabelWithHint: true,
                            suffixIcon: controler.text.isEmpty
                                ? null
                                : Icon(Icons.clear),
                            prefixIcon: controler.text.isEmpty
                                ? IconButton(
                                    icon: Icon(Icons.search, size: 16),
                                    onPressed: () {},
                                  )
                                : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: isselect
                                ? Image.asset(
                                    'images/word_selected.png',
                                    width: _width * 0.15,
                                  )
                                : Image.asset('images/word.png',
                                    width: _width * 0.15),
                            onTap: () {
                              setState(() {
                                isselect = !isselect;
                                isselect2 = false;
                                isselect3 = false;
                                isselect4 = false;
                              });
                            },
                          ),
                          InkWell(
                            child: isselect2
                                ? Image.asset('images/word_root_selected.png',
                                    width: _width * 0.14)
                                : Image.asset('images/word_root_iPhone.png',
                                    width: _width * 0.14),
                            onTap: () {
                              setState(() {
                                isselect = false;
                                isselect2 = !isselect2;
                                isselect3 = false;
                                isselect4 = false;
                              });
                            },
                          ),
                          InkWell(
                            child: isselect3
                                ? Image.asset('images/word_selected.png',
                                    width: _width * 0.14)
                                : Image.asset('images/word.png',
                                    width: _width * 0.14),
                            onTap: () {
                              setState(() {
                                isselect = false;
                                isselect2 = false;
                                isselect3 = !isselect3;
                                isselect4 = false;
                              });
                            },
                          ),
                          InkWell(
                            child: isselect4
                                ? Image.asset('images/root_selected.png',
                                    width: _width * 0.12)
                                : Image.asset('images/root.png',
                                    width: _width * 0.12),
                            onTap: () {
                              setState(() {
                                isselect = false;
                                isselect2 = false;
                                isselect3 = false;
                                isselect4 = !isselect4;
                              });
                            },
                          ),
                        ],
                      ),
                      Container(
                        height: _highet * 0.033,
                        width: _width,
                        color: Colors.blue.shade100,
                        child: Text('عدد  نتائج: .'),
                      ),
                      Container(
                        height: _highet * 0.15,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Container(
                        height: _highet * 0.044,
                        width: _width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ Image.asset('images/Check_List_-en.png'),
                           Image.asset('images/Add-List-en.png')
                          ],
                        ),

                      ),
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}
