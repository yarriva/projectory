import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

bool _obscureText = true;
TextEditingController emailController = new TextEditingController();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2016/11/08/05/01/airline-1807486_960_720.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text(
              'Projectory',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 22.0,
                fontFamily: 'arial',
              ),
            ),
          ),
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: IconButton(
                icon: Icon(
                  Icons.event_note,
                  color: Colors.red,
                  size: 25.0,
                ),
                onPressed: () {}),
          ),
        ),
        body: Center(
          child: Container(
            width: 430.0,
            height: 490.0,
            decoration: BoxDecoration(
              color: Color(0xff2A2B2F),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35.0, 55.0, 0, 0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.red,
                            fontSize: 30.0,
                            fontFamily: 'arial',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35.0, 20.0, 0, 0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Enter your details below',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontFamily: 'arial',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35.0, 50.0, 0, 0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Email Address',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontFamily: 'arial',
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35.0, 8.0, 0, 0),
                      child: Container(
                        height: 52.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Form(
                            child: Column(
                          children: <Widget>[
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(15.0, 3.0, 0, 0),
                              child: TextField(
                                controller: emailController,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'arial',
                                    fontSize: 16.0),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xffe6e6e6),
                                    ),
                                    hintText: 'Type your email here'),
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 35.0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                text: 'Password',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontFamily: 'arial',
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(150.0, 3.0, 0, 0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Forgot your password?',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.grey,
                                    fontSize: 13.0,
                                    fontFamily: 'arial',
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print(
                                        'aaaaaaaa',
                                      );
                                    },
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35.0, 8.0, 0, 0),
                      child: Container(
                        height: 52.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Form(
                            child: Column(
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(15.0, 3.0, 0, 0),
                                child: Stack(
                                  children: <Widget>[
                                    TextField(
                                      obscureText: _obscureText,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'arial',
                                          fontSize: 16.0),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                            fontSize: 16.0,
                                            color: Color(0xffe6e6e6),
                                          ),
                                          hintText: 'Type your password here'),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            280.0, 0.0, 0, 0),
                                        child: IconButton(
                                          icon: _obscureText
                                              ? Icon(Icons.visibility)
                                              : Icon(Icons.visibility_off),
                                          color: _obscureText
                                              ? Color(0xffe6e6e6)
                                              : Colors.red,
                                          onPressed: () {
                                            this.setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                          },
                                        )),
                                  ],
                                )),
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35.0, 32.0, 0, 0),
                      child: FlatButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {
                          setState(() {
                            Navigator.pushReplacement(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomePage(email: emailController.text)));
                          });
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(50.0, 7.0, 50.0, 7.0),
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'arial',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
