import 'package:flutter/material.dart';
import 'package:helloui/screens/Loginscreen.dart';

class Signupscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/back3.png'), fit: BoxFit.fill),
            color: Colors.white),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height * .06,
              ),
              GestureDetector(
                onTap: () {
Navigator.pop(context);


                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: width * .07,
                    ),
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: width * .07,
                  ),
                  Text(
                    'Create account',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'font1', fontSize: 30),
                  ),
                 
                ],
              ), SizedBox(
                    height: height * .18,
                  ),
              customtextfield(
                hint: 'Enter your name',
                issecured: false,
              ),customtextfield(
                hint: 'Enter your email',
                issecured: false,
              ),customtextfield(
                hint: 'Enter your password',
                issecured: true,
              ),customtextfield(
                hint: 'Confirm password',
                issecured: true,
              ),
              SizedBox(
                height: height*.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: ButtonTheme(
                  minWidth: width,
                  height: 55,
                                child: RaisedButton(color: Color(0xFFFE7550),
                                  
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  onPressed: (){},
                  child: Text('Create Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
