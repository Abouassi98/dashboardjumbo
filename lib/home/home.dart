import 'package:dashboard/category/shoppingextra.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/pages/configs.dart';
import 'package:dashboard/drawer/mydrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ادارة المطعم'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      endDrawer: Mydrawrer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.home,
                            size: 80,
                            color: Colors.green,
                          ),
                          Text(
                            'الرئيسيه',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Shopping()));
                    },
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Icon(
                              Icons.category,
                              size: 80,
                              color: Colors.orange,
                            ),
                            Text(
                              'التصنيفات',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.fastfood,
                            size: 80,
                            color: Colors.green,
                          ),
                          Text(
                            'الماكولات',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.message,
                            size: 80,
                            color: Colors.blue,
                          ),
                          Text(
                            'الطلبيات',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.notifications,
                            size: 80,
                            color: Colors.lime,
                          ),
                          Text(
                            'الاشعارات',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.access_alarms,
                            size: 80,
                            color: Colors.orange,
                          ),
                          Text(
                            'التصنيفات',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
