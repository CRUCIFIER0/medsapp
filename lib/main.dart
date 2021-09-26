import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medsapp/screens/MedView.dart';
import 'package:medsapp/screens/dashBoard.dart';
import 'package:medsapp/screens/singup.dart';
import 'package:medsapp/services/authService.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        initialData: null,
        value: AuthService().firebaseAuth.authStateChanges(),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            //darkTheme: darkTheme(),
            debugShowCheckedModeBanner: false,
            home: Wrapper()
        )
    );
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<User?>(context);
    if (user == null) {
      return SignUp();
    }
    return DashBoard();
  }
}