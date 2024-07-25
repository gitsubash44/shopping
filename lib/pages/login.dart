import 'package:flutter/material.dart';
import 'package:shopping/widget/sub_widget.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 90.0),
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image.asset(
                  'images/boy.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sign In',
                style: AppWidget.SemiboldTextFeildStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
