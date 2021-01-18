import 'package:authentication4_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication4_flutter_app/SignIn_light.dart';
import 'package:authentication4_flutter_app/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInDark extends StatelessWidget {
  var _icon = Icons.wb_sunny;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.transparent,
        title: Text('Sign In',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => Home()),),
        ),
        actions: [
          IconButton(
            icon: Icon(
              _icon,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {

              if (_icon == Icons.wb_sunny) {
                _icon = Icons.brightness_2;
                Navigator.push(context,MaterialPageRoute(builder: (context) => SignInLight()),);

              } else {
                _icon = Icons.wb_sunny;

              }

            },
          ),
        ],

      ),

      body:
      FadeAnimation(1.6,Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black

        ),

        child: Column(
          children: [

            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(

                    height: 45,
                    width: 160,
                    // margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterBody()),);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: SvgPicture.asset(
                              "assets/icons/icons-facebook.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Center(
                            child: Text("Facebook", style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),),
                          ),

                        ],
                      ),

                    )
                ),
                SizedBox(width: 10,),
                Container(

                    height: 45,
                    width: 160,
                    // margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterBody()),);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: SvgPicture.asset(
                              "assets/icons/icons-google.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Center(
                            child: Text("Google", style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),),
                          ),

                        ],
                      ),



                    )
                )

              ],
            ),

            SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [



                Text('OR',style: TextStyle(fontSize: 18,color: Colors.white),),



              ],
            ),





            SizedBox(height: 40,),



            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email or Phone number",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.email,color: Colors.grey,)
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.lock,color: Colors.grey,)
                  ),
                ),
              ),
            ),





            SizedBox(height: 35,),

            Container(

                height: 45,
                width: 340,
                // margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff5700c7)
                ),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterBody()),);
                  },
                  child: Center(
                    child: Text("Sign In", style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),),
                  ),

                )
            ),




            SizedBox(height: 170,),


            // splitter
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
              ),
            ),

            SizedBox(height: 10,),

            Text.rich(
                TextSpan(
                    text: "Already have an account ? ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,

                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => SignInDark()),);
                          // single tapped
                        },
                      ),

                    ]
                )
            ),







          ],
        ),
      ))

    );
  }
}
