import 'package:flutter/material.dart';
import 'package:great_tafsirs1/featues_custom_dialog_play_end/presention/CustomDialog/custom_dialog_play_end.dart';
import 'package:great_tafsirs1/featursAya/presention/Aya/aya.dart';
import 'package:great_tafsirs1/featursScore/listofScors.dart';
import 'package:great_tafsirs1/featursSetting/setting.dart';
import 'package:great_tafsirs1/featurs_custom_dialog_play_all/presention/custom_dialog_play_all/custom_dialog_play_all.dart';
import 'package:great_tafsirs1/featurs_search/search.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  bool selectMark = false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    List<Image> images = [
      Image.asset("images/soura2.png"),
      (Image.asset("images/sour1.png")),
      (Image.asset("images/soura2.png")),
      (Image.asset("images/sour1.png")),
      (Image.asset("images/sour1.png")),
    ];
    return SafeArea(child:  Stack(
      children: [
        Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('images/QuranPageBackground.jpg'),
                fit: BoxFit.fill,
              ),
            )),
        Stack(
          children: [

            Stack(
              children: [
                Stack(children: [
                  Container(
                    padding: EdgeInsets.only(top: _height * 0.1),
                    height: _height,
                    width: _width,
                    child: Image.asset(
                      'images/QuranFramDesign_iPhone.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      child: Container(
                        height: _height,
                        width: _width,
                        margin: EdgeInsets.only(
                          top: _height * 0.09,
                        ),
                        padding: EdgeInsets.all(_height *0.065),
                        child: PageView.builder(
                          itemCount: images.length,
                          itemBuilder: (_, index) {
                            return images[index];
                          },
                        ),
                      )),
                  Stack(
                    children: [
                      Positioned(
                        top: _height * 0.11,
                        left: _width * 0.16,
                        child: Image.asset(
                          'images/Sorabaqra1.png',
                          width: _width * 0.21,
                          height: 35,
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: _height * 0.11,
                        right: _width * 0.16,
                        child: Image.asset(
                          'images/Joza1.png',
                          width: _width * 0.21,
                          height: 35,
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                          left: _height * -0.01,
                          right: _height * 0.01,
                          child: Container(
                              height: _height * 0.088,
                              width: _width * 0.01,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) => CustomDialogPlay());
                                      },
                                      child: (getRowButton(
                                        'images/playEnd1x.png',
                                      ))),
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) =>
                                                CustomDialogPlayAll());
                                      },
                                      child: getRowButton(
                                          'images/play_all_icon.png')), // images/play_all_icon.png
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => Aya());
                                      },
                                      child:
                                      getRowButton('images/ayaList.png')),

                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => Setting());
                                      },
                                      child: getRowButton(
                                          'images/settings_icon.png')),

                                  getRowButton('images/list_icon.png'),
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => Score());
                                      },
                                      child: getRowButton(
                                          'images/bookmark_list_icon.png')),


                                  GestureDetector(

                                    child:Column(

                                      children: [
                                        Padding(padding: EdgeInsets.only(top: 19)),
                                        selectMark? Image.asset('images/removeBookmark_icon.png',width: 40,):
                                        Image.asset('images/addBookMark_icon.png',width: 40,),],),
                                    onTap: () {
                                      setState(() {
                                        selectMark = !selectMark;
                                      });
                                    },
                                  ),
                                  //images/addBookMark_icon.png
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => Seaarch());
                                      },
                                      child: getRowButton(
                                          'images/search_icon.png')), //images/search_icon.png
                                ],
                              ))),
                      //images/play_all_icon.png
                    ],
                  )
                ])
              ],
            )
          ],
        ),
      ],
    ));

  }
}

Widget getRowButton(String image) {
  return Container(

    margin: EdgeInsets.only(top: 20,left: 10),
    child: Image(

      image: AssetImage(image),
      width: 40,
    ),
  );
}
