import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100,
        child: Image.asset('assets/images/app_logo.png'),
      ));

  final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      cursorColor: Color(0xff3f1313),
      decoration: InputDecoration(
        focusColor: Color(0xff3f1313),
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ));

  final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ));

  final loginButton = Padding(
    padding: EdgeInsets.symmetric(vertical: 16),
    child: Material(
      borderRadius: BorderRadius.circular(30),
      shadowColor: Colors.lightBlueAccent.shade100,
      elevation: 5,
      child: MaterialButton(
        onPressed: () {},
        minWidth: 200,
        height: 42,
        color: Color(0xff3f1313),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );

  final forgotLabel = TextButton(
    child: Text(
      'Forgot Password?',
      style: TextStyle(color: Color(0xff820f0f)),
    ),
    onPressed: () {},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red[50],
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              child: Center(child: logo),
              // decoration: BoxDecoration(color: Colors.red[50]),
            ),
            //Spacer(),
            Text(
              'Welcome To Login App',
              style: TextStyle(
                color: Color(0xff3f1313),
                fontSize: 32,
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                email,
                SizedBox(
                  height: 16,
                ),
                password,
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    forgotLabel,
                  ],
                ),
                loginButton,
                SizedBox(
                  height: 16,
                ),
              ],
            ),

            Spacer()
            // email,
            // SizedBox(
            //   height: 16,
            // ),
            // password,
            // SizedBox(
            //   height: 32,
            // ),
            // loginButton,
            // SizedBox(
            //   height: 16,
            // ),
            // forgotLabel
          ],
        ),
      ),
    );
  }
}
