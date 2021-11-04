import 'package:e_commerce_app/services/auth.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();

    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
      backgroundColor: Colors.orange,
      elevation: 0,
      title: Text('Home!'),
      actions: <Widget>[
        TextButton.icon(onPressed: ()async{
          await _auth.sigOut();
        }, 
        icon: Icon(Icons.person), 
        label: Text('log out'),
        )
      ],
      ),
    );
  }
}