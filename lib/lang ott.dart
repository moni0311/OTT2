import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'OTT/home ott.dart';





class lang extends StatefulWidget {
  const lang({super.key});



  @override


  State<lang> createState() => _langState();
}

class _langState extends State<lang> {

  bool tik1=false;
  bool tik2=false;
  bool tik3=false;
  bool tik4=false;
  bool tik5=false;
  bool tik6=false;

  @override

  Widget build(BuildContext context) {
    var list;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black87,
      //   leading: Icon(Icons.arrow_back,color: Colors.white,),
      //   actions: [
      //     Row(
      //       children: [
      //         Icon(Icons.settings,color: Colors.white,),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("Help & Settings",style: TextStyle(color: Colors.white),),
      //         ),
      //
      //       ],
      //     ),
      //
      //   ],
      //
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent,Colors.deepPurple]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Languages",style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold
              ),),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,left: 10),
              child: Text("Select Language to Continue",style: TextStyle(
                  fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Container(
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          tik1=!tik1;
                        });

                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: tik1? Colors.red:Colors.white,




                        ),

                        child: Center(
                          child: Text("English",style: TextStyle(
                              fontSize: 30
                          ),),
                        ),
                        // color: tik? Colors.green:Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                      ),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            tik2=!tik2;
                          });

                        },
                        child: Container(
                          height: 30,
                          width: 40,
                          decoration: BoxDecoration(
                            color: tik2? Colors.orangeAccent:Colors.white,



                          ),
                          child: Center(
                            // hindi
                            child: Text("हिंदी",style: TextStyle(
                                fontSize: 30
                            ),),
                          ),
                          // color: tik? Colors.green:Colors.white,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          tik3=!tik3;
                        });

                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: tik3? Colors.deepOrange:Colors.white,



                        ),
                        child: Center(
                          child: Text("தமிழ்",style: TextStyle(
                              fontSize: 30
                          ),),
                        ),
                        // color: tik? Colors.green:Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          tik4=!tik4;
                        });

                      },
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: tik4? Colors.pinkAccent:Colors.white,



                        ),
                        child: Center(
                          // malayalam
                          child: Text("മലയാളം",style: TextStyle(
                            fontSize: 30,
                          ),),
                        ),
                        // color: tik? Colors.green:Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          tik5=!tik5;
                        });

                      },
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: tik5? Colors.green:Colors.white,



                        ),
                        child: Center(
                          // telugu
                          child: Text("తెలుగు",style: TextStyle(
                              fontSize: 30
                          ),),
                        ),
                        // color: tik? Colors.green:Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          tik6=!tik6;
                        });

                      },
                      child: Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                          color: tik6? Colors.brown:Colors.white,



                        ),
                        child: Center(
                          // kannada
                            child: Text("ಕನ್ನಡ",style: TextStyle(
                                fontSize: 30
                            ),)),
                        // color: tik? Colors.green:Colors.white,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230,top: 20),
              child: SizedBox(
                width: 150,
                height: 40,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                    child: Text("Continue",style: TextStyle(fontSize: 20,
                        color: Colors.black,fontWeight: FontWeight.bold),)),
              ),
            )







          ],
        ),
      ),


    );



  }
}
