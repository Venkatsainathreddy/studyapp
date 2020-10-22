import 'package:flutter/material.dart';
import 'package:studyapp/screens/dropdowns.dart';
import 'package:studyapp/screens/signupscreen.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.blue[400]],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
            image: DecorationImage(
                image: AssetImage('images/1.png'), fit: BoxFit.cover)),
        child: Center(
          child: Column(children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 40),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Sign In With Your Account',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 65),
              ],
            ),
            CustomTextField(
              hint: '.....Email/Phone',
              secured: false,
            ),
            SizedBox(height: 25),
            CustomTextField(
              hint: '.....Password',
              secured: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Text('forgot Password?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                    )),
                SizedBox(
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 55,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => FirstScreen()));
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '-Or-',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Dont have an Account?',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700)),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => Signupscreen()));
                  },
                  child: Text(
                    'Sign-Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hint;
  bool secured;
  CustomTextField({this.hint, this.secured});

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        obscureText: secured,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: hint,
            hintStyle: TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
                color: Colors.white70,
                fontWeight: FontWeight.w700),
            filled: true,
            fillColor: Colors.white.withOpacity(.3),
            focusColor: Colors.transparent),
      ),
    );
  }
}
