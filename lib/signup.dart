import 'package:flutter/material.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  static String tag = 'sign-up' ;
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
    final username = TextFormField(
      keyboardType: TextInputType.text,
      autofocus:false,
      decoration: InputDecoration(
        hintText: 'Enter your Username' ,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus:false,
      decoration: InputDecoration(
        hintText: 'Enter your Email' ,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final phoneNumber = TextFormField(
      keyboardType: TextInputType.number,
      autofocus:false,
      decoration: InputDecoration(
        hintText: 'Phone Number' ,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus:false,
      obscureText: true,
      decoration:InputDecoration(
        hintText: 'Enter Password',
        contentPadding:EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final signupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Login.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.purple,
        child: Text('SIGNUP', style: TextStyle(color: Colors.white, fontSize: 17.0)),
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
            username,
            SizedBox(height: 15.0),
            email,
            SizedBox(height: 15.0),
            phoneNumber,
            SizedBox(height: 15.0),
            password,
            SizedBox(height: 24.0),
            signupButton,
            Row(
              children: <Widget>[
                Text('Already have an account?'),
                FlatButton(
                  textColor: Colors.red,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {
                    Navigator.push
                      (
                        context,
                        MaterialPageRoute(builder: (context) {
                          return new Login();
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