import 'package:flutter/material.dart';
import 'package:bodily2/signup.dart';

class Login extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero' ,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/images/bodily.png',
        ),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus:false,
      decoration: InputDecoration(
        hintText: 'Input Email' ,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border:OutlineInputBorder(borderRadius: BorderRadius.circular(322.0)),
      ),);
    final password = TextFormField(
      autofocus:false,
      obscureText: true,
      decoration:InputDecoration(
        hintText: 'Input Password',
        contentPadding:EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: (){

        },
        padding: EdgeInsets.all(12),
        color: Colors.purple,
        child: Text('Log In', style: TextStyle(color: Colors.white, fontSize: 17.0)),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 50.0),
            email,
            SizedBox(height: 15.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            Row(
              children: <Widget>[
                Text('Dont have an account?'),
                FlatButton(
                  textColor: Colors.red,
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {
                    Navigator.push
                      (
                        context,
                        MaterialPageRoute(builder: (context) {
                          return new Signup();
                        })
                    );
                    },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}