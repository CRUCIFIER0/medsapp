import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class MedView extends StatefulWidget {
  const MedView({Key? key}) : super(key: key);

  @override
  _MedViewState createState() => _MedViewState();
}

class _MedViewState extends State<MedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2F2FF),
      appBar: AppBar(
        leading: IconButton(onPressed:(){ Navigator.pop(context);}, icon: Icon(EvaIcons.arrowBack,color: Colors.black,) ),
        backgroundColor: Color(0xffE2F2FF),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
