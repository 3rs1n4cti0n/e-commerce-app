import 'package:e_commerce_app/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function? toggle;
  SignIn({this.toggle});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authService = AuthService();

  // text field data
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        elevation: 0,
        title: Text('Sign in'),
        actions: [
          TextButton.icon(
            onPressed: (){
              widget.toggle!();
            },
            icon: Icon(Icons.person),
            label: Text('Register'),
            )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                onChanged: (mail) {
                  setState(() {
                    email = mail;
                  });
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                onChanged: (pass) {
                  password = pass;
                },
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                child: Text('Sign in'),
                onPressed: ()async{

                }
              
              )
            ],
          ),
          ),
        ),
    );
  }
}