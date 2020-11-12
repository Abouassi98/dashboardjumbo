import 'package:dashboard/home/home.dart';
import 'package:dashboard/pages/configs.dart';
import 'package:flutter/material.dart';


class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  final GlobalKey<FormState> _key = GlobalKey();
  Widget formField({String text, Function function}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: TextFormField(
        decoration: InputDecoration(hintText: text, border: InputBorder.none),
        validator: function,
      ),
    );
  }

  _submit() {
    if (!_key.currentState.validate()) {
      return;
    } else {
      _key.currentState.save();
   
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(

        elevation: 0.0,
        backgroundColor: primaryColor,
       title: Text("اضافة تصنيف جديد"),
       centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Form(
                  child: ListView(
                    children: [
                      
                 
                        formField(
                            function: (value) {
                              if (value.isEmpty || value.length < 3) {
                                return 'الرجاء ادخال الاسم كامل';
                              }
                            },
                            text: "اسم التصنيف"),
                      formField(
                          function: (value) {
                            if (value.isEmpty || !value.contains("@")) {
                              return 'الرجاء ادخال البريد الالكتروني';
                            }
                          },
                          text: "الاسم بالانجليزي"),
             
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'الترتيب',
                                    border: InputBorder.none),
                                validator: (value) {
                                  if (value.isEmpty || value.length < 6) {
                                    return 'الرجاء ادخال كلمة المرور';
                                  }
                                },
                              ),
                            ),
            
                        
                          ]),
                        ),
   
                    
                      MaterialButton(
                        onPressed: _submit,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child:
                              Text(
                                   'حفظ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                          margin: EdgeInsets.only(top: 30, bottom: 10),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
              
                    ],
                  ),
                ),
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}
