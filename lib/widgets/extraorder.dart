import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItem extends StatefulWidget {
  final String extraName;
  final String extraPrice;
  final String extraImage;
  MenuItem({
    @required this.extraName,
    @required this.extraPrice,
    @required this.extraImage,
  });

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.cancel,
            color: Colors.red,
          ),
        ),
        Container(
          child: ListTile(
            title: Text(
              widget.extraName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16),
            ),
            subtitle: Text(
              '${widget.extraPrice} ج',
              style: TextStyle(color: Colors.grey),
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(widget.extraImage),
            ),
            trailing: Container(
              width: 30,
            //padding: EdgeInsets.all(5),  
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: IconButton(
                  iconSize: 16,
                  icon: FaIcon(
                    FontAwesomeIcons.edit,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
