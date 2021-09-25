import 'package:flutter/material.dart';
class MedContain extends StatefulWidget {
  const MedContain({Key? key}) : super(key: key);

  @override
  _MedContainState createState() => _MedContainState();
}

class _MedContainState extends State<MedContain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffF5F5FD)
      ),
      child: Column(
        children: [

        ],
      ),
    );
  }
}

