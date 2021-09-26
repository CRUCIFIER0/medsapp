import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

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
              Image.asset('assets/ibu.png',height: 270,width: 370,),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 24),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20) ),
                  ),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(color: Color(0xffE3E2E3),
                        thickness: 5,
                        endIndent: 160 ,
                        indent: 140,
                      ),
                      SizedBox(height: 8,),

                      Row(
                        children: [
                          Text("Ibuprofen", style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w600,),),
                          Spacer(),
                          LikeButton(
                            circleColor:
                            CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                          ),
                          SizedBox(width:24)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text("Tablets * 50 pieces", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),

                      SizedBox(height: 30,),
                      Text(r"$ 4.69", style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500,),),
                      SizedBox(height:20),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dosage form", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
                              Text("Pills", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Active subtance", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
                              Text("Ibuprofen", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),
                          SizedBox(width:24)
                        ],
                      ),
                      SizedBox(height:20),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dosage          ", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
                              Text("0.2 g", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Manufacture       ", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
                              Text("Biosyn, Russia", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),
                          SizedBox(width:24),

                        ],
                      ),
                      SizedBox(height:35),

                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 336,
                            decoration: BoxDecoration(
                              color: Color(0xff367EFA),
                              borderRadius: BorderRadius.circular(15)

                            ),
                            child: Center(child: Text("Add to cart", style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                            ),
                          ),
                          SizedBox(width:24),

                        ],
                      )


                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
