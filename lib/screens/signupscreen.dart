import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyapp/screens/loginscreen.dart';

class Signupscreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.blue[400]],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              image: DecorationImage(
                image: AssetImage('images/1.png'),
                fit: BoxFit.cover,
              )
            ),
            
            child: Center(
              child: Column(
                       children: <Widget>[
                         SizedBox(height: 100,),

                         Row(
                           children: <Widget>[
                             SizedBox(width: 40),

                             Text('Create account', style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 35,
                             ),),

                             SizedBox(height: 100),
                           ],),

                           CustomTextField(
                             hint: '....Enter Email',
                             secured: false,
                           ),
                           SizedBox(height: 15),
                           CustomTextField(
                             hint: '....Enter your College Name',
                             secured: false,
                           ),
                           SizedBox(height: 15),
                           CustomTextField(
                             hint: '...Enter your college Id',
                             secured: false,
                           ),
                           SizedBox(height: 15),
                           CustomTextField(
                             hint: 'Enter your name',
                             secured: false,
                           ),
                           SizedBox(height: 15),
                           CustomTextField(
                             hint: 'Enter your password',
                             secured: false,
                           ),
                           SizedBox(height: 25),

                           Padding(
                                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                                    child: ButtonTheme(
                                    minWidth: MediaQuery.of(context).size.width,
                                    height: 55,
                                      child: RaisedButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: 
                                                                         (ctx)=>LoginScreen()));
                                      }, color: Colors.white, shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)
                                     ),
                                     child: Text('Create Account', 
                                            style: TextStyle(
                                                        color: Colors.blueGrey,
                                                        fontSize: 22),),),
                                  ),
                                ),
                       ],
            ),)

      ),
    );
  }
}