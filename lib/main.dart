import 'package:e_commerce_app/model/user.dart';
import 'package:e_commerce_app/screens/wrapper.dart';
import 'package:e_commerce_app/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserClass?>.value(
      value: AuthService().getUser, 
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}