import 'package:flutter/material.dart';
import 'package:login_app/home_page.dart';
//import 'package:form_validator/form_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //final  _formKey = GlobalKey<FormState>();
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

        // validator: ValidationBuilder().email().maxLength(50).build(),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff3f1313)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff820f0f)),
          ),
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final password = TextFormField(
        autofocus: false,
        obscureText: true,
        validator: (value) {
          if (value!.isEmpty)
            return null;
          else
            return "Password is required field";
          //else if (value.length<)
        },
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff3f1313)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff820f0f)),
          ),
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
          onPressed: () {
            Navigator.of(context).pushNamed((HomePage.tag));
          },
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
            Spacer(),
            Text(
              'Welcome To Login App',
              style:
                  TextStyle(color: Color(0xff3f1313), fontSize: 32, shadows: [
                Shadow(
                  offset: Offset(1.0, 5.0),
                  blurRadius: 25.0,
                  color: Color(0xff820f0f),
                )
              ]),
            ),
            Spacer(),
            Form(
              //key: _formKey,
              child: Column(
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
