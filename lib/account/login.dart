import 'package:dashboard/home/home.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    }
  }


  bool _forgetPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            if (_forgetPassword == true) {
              setState(() {
                _forgetPassword = false;
             
              });
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
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
                      Container(
                        margin: EdgeInsets.only(bottom: 35),
                        child: _forgetPassword
                            ? Text(
                                'نسيت كلمة المرور',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 25),
                              )
                            : Text(
                            'سجل الدخول الي حسابك من هنا',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 25),
                              ),
                      ),
                      _forgetPassword
                          ? Container(
                              margin: EdgeInsets.only(bottom: 35),
                              child: Text(
                                'قم بادخال الايميل الصحيح ليتم ارسال كلمة المرور اليك',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 25),
                              ),
                            )
                          : Container(),
          
                      formField(
                          function: (value) {
                            if (value.isEmpty || !value.contains("@")) {
                              return 'الرجاء ادخال البريد الالكتروني';
                            }
                          },
                          text: "البريد الالكتروني"),
                      if (_forgetPassword == false)
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
                                    hintText: 'كلمة المرور',
                                    border: InputBorder.none),
                                validator: (value) {
                                  if (value.isEmpty || value.length < 6) {
                                    return 'الرجاء ادخال كلمة المرور';
                                  }
                                },
                              ),
                            ),
                           
                              GestureDetector(
                                child: Text(
                                  'نسيت كلمة المرور',
                                  style: TextStyle(color: Colors.red),
                                ),
                                onTap: () {
                                  setState(() {
                                    _forgetPassword = true;
                                  });
                                },
                              ),
                          ]),
                        ),
                
                      MaterialButton(
                        onPressed: _submit,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: _forgetPassword
                              ? Text(
                                  'ارسال',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                )
                              : Text(
                                 'دخول',
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
              _forgetPassword
                  ? Container()
                  : Container(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "اذا لديك حساب سجل الدخول",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                        
                          ]),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
