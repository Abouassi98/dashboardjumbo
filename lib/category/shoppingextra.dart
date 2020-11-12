import 'package:dashboard/pages/add.dart';
import 'package:dashboard/pages/configs.dart';
import 'package:flutter/material.dart';

import 'package:dashboard/widgets/extraorder.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  //GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  List extraMoqblat = [
    {
      'extra_id': '1',
      'extraName': 'باكيت بطاطس',
      'extraPrice': '10',
      'extraImage': 'images/21.jpg',
    },
    {
      'extra_id': '2',
      'extraName': 'كولسلو',
      'extraPrice': '10',
      'extraImage': 'images/20.jpg',
    },
    {
      'extra_id': '3',
      'extraName': 'صوص جامبو',
      'extraPrice': '7',
      'extraImage': 'images/26.jpg',
    },
  ];
  List extraDrinks = [
    {
      'extra_id': '4',
      'extraName': 'كانز',
      'extraPrice': '10',
      'extraImage': 'images/25.png',
    },
    {
      'extra_id': '5',
      'extraName': 'عصير ليمون نعناع',
      'extraPrice': '10',
      'extraImage': 'images/24.jpg',
    },
  ];
  List extra = [
    {
      'extra_id': '6',
      'extraName': 'جبنه موتزريلا',
      'extraPrice': '10',
      'extraImage': 'images/23.jpeg',
    },
    {
      'extra_id': '7',
      'extraName': 'صوص شيدر',
      'extraPrice': '10',
      'extraImage': 'images/22.jpg',
    },
  ];
  Widget extraorder(List list) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        //  shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, i) {
          return MenuItem(
            extraName: list[i]['extraName'],
            extraImage: list[i]['extraImage'],
            extraPrice: list[i]['extraPrice'],
          );
        },
      ),
    );
  }

  Widget headerBuild() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(15),
        child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  color: Colors.grey[100],
                  offset: Offset(0, 1),
                  spreadRadius: 1),
            ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: IconButton(
              color: Colors.red,
              icon: Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
      ),
    );
  }

  void showSheetMessage(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        context: context,
        builder: (BuildContext context) => Container(
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 50),
                        child: Icon(
                          Icons.done,
                          color: Colors.red,
                          size: 55,
                        ),
                      ),
                      Text(
                        "شكرا لطلبك",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        'يمكنك تتبع الطلبية من خلال الضغط علي الزر في الاسفل',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: MaterialButton(
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'تابع الطلبية',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: MaterialButton(
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'الانتقال الي الماكولات',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'ادارة التصنيفات',
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              primary: false,
              //  shrinkWrap: true,
              children: [
                extraorder(extraMoqblat),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Add()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          margin: EdgeInsets.only(bottom: 5),
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 50, right: 30),
          child: Text(
            "اضافة تصنيف جديد",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 7,
                color: Colors.grey[100],
                offset: Offset(0, 3),
                spreadRadius: 4),
          ], color: Colors.red, borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
