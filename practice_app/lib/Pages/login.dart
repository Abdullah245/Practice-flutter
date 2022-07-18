import 'package:abcd/Functions/textfield.dart';
import 'package:flutter/material.dart';

import '../Constant/clr.dart';
import '../Constant/text.dart';
import '../Functions/textButton.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool is_Obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(ColorConst.splash),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Text(
              TextCons.Welcomeback,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            TextCons.Login,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 5, 0),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.email_outlined,
                                        size: 18,
                                      ),
                                    ),
                                    Text(TextCons.Email,
                                        style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: textField(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.lock_outline,
                                        size: 18,
                                      ),
                                    ),
                                    Text(
                                      TextCons.Password,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: TextField(
                                  obscureText: is_Obscure,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    suffix: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          is_Obscure = !is_Obscure;
                                        });
                                      },
                                      child: Text(
                                        TextCons.Show,
                                        style: TextStyle(
                                          color: Color(ColorConst.splash),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 12),
                                  child: Text(
                                    TextCons.forgetPasscode,
                                    style: TextStyle(
                                      color: Color(ColorConst.splash),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  child: textButton(context, Login(),
                                      TextCons.Login, Colors.white,
                                      clr2: Color(ColorConst.splash)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  child: textButton(
                                    context,
                                    Login(),
                                    TextCons.CreateAccount,
                                    Color(ColorConst.splash),
                                  ),
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
            ),
          ]),
        ),
      ),
    );
  }
}
