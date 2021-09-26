import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medsapp/screens/MedView.dart';
import 'package:medsapp/services/authService.dart';
import 'package:unicons/unicons.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  AuthService auth = new AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left:24,top: 24,right: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(UniconsLine.telegram_alt,size: 15,color:Colors.grey),
                  Text(" London", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                ],
              ),
              SizedBox(height:0,),
              Row(
                children: [
                  Text("Hi, ", style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w400),),
                  Text(auth.firebaseAuth.currentUser!.displayName!+"!", style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w700),),
                  Spacer(),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(auth.firebaseAuth.currentUser!.photoURL!.toString()),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                  ),
                  //SizedBox(width:26)
                ],
              ),
              SizedBox(height:15),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffebebeb)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width:10),
                      IconButton(onPressed:(){}, icon: Icon(UniconsLine.search,color: Colors.grey,) ),
                      SizedBox(width:15),
                      Text("Search for medicine",style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400))
                    ],
                  )
                  ,
                ),
              ),
              SizedBox(height:30,),
              Container(
                padding: EdgeInsets.only(left: 24,top: 24),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffE2F2FF)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("We will deliver \nyour medicines", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700),),
                        SizedBox(height: 30,),
                        ElevatedButton(
                            child: Text(
                                "Catelog",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xff367EF8)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(color: Color(0xff367EF8))
                                    )
                                )
                            ),
                            onPressed: (){ AuthService().logout();}
                        )
                      ],
                    ),
                    Image.asset('assets/meds.png',height: 150,width: 150,)

                  ],
                ),

              ),
              SizedBox(height: 20,),
              Row(children: [
                Text("Popular", style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w700),),
                Spacer(),
                Icon(UniconsLine.sliders_v_alt)
              ],),
              SizedBox(height:10),
              Expanded(
                child:GridView.builder(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MedView()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 158,
                            width: 200,
                            padding: EdgeInsets.only(top: 5),
                            margin: EdgeInsets.only(left:5,right: 5,bottom: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffF5F5FD)
                            ),


                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/ibu.png', width: 130, ),

                                Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Text("Ibuprofen", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Text("Tablets * 50 peices", style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500,color: Colors.grey),),
                                  ],
                                ),

                              ],
                            ),


                          ),
                        ],
                      ),
                    );
                    }
                    ),




                )



            ],
          ),
        ),
      ),
    );
  }
}
