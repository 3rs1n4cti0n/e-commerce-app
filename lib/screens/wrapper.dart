import 'package:e_commerce_app/model/user.dart';
import 'package:e_commerce_app/screens/authentication/authenticate.dart';
import 'package:e_commerce_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserClass? user = Provider.of<UserClass?>(context);

    // return home or authentication
    if(user==null)
    {
      return Authenticate();
    } else {
      return home();
    }
  }
}