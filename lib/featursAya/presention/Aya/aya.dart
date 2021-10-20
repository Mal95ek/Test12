import 'package:flutter/material.dart';

import 'aya.detials.dart';

class Aya extends StatefulWidget {
  _AyaState createState() => _AyaState();
}

class _AyaState extends State<Aya> {
  // ignore: unused_field
  var _tabController;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;

    return AlertDialog(actions: [
      Container(
        height:_highet *0.40,
        width: _width,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: _highet*0.080,
              backgroundColor: Colors.white,
              bottom: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "قواـم الايات",
                  ),
                  Tab(
                    text: "قواـم البحث",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (context) => AyaDetials());
                    },
                  child: Text('انشاء القائمه'),
                ),
                MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AyaDetials());
                  },
                  child: Text('انشاــ القاـمه '),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

