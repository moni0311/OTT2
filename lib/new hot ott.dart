import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import 'OTT/home ott.dart';


class newhot extends StatefulWidget {
  const newhot({super.key});

  @override
  State<newhot> createState() => _newhotState();
}

class _newhotState extends State<newhot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black,Colors.red,Colors.black]
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 360,top: 20),
                      child: Icon(Icons.arrow_back,color: Colors.white,),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 50),
                  child: Text("Newly & Trending",
                      style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    height: 300,
                    child: Image.network("https://i0.wp.com/www.thewrap.com/wp-content/uploads/2023/08/american-horror-stories.jpg?fit=990%2C557&ssl=1",
                      fit: BoxFit.fill,),
                  ),
                ),
                Text(
                  "AMERICAN  HORROR  STORIES",
                  style: GoogleFonts.b612(fontSize: 22,
                      color: Colors.white,letterSpacing: 2),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text("Season 3 releasing soon",
                    style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Expanded(child: ReadMoreText("2 Seasons . English . Horror .Paranormal . Absurd"
                      "A spin-off of Ryan Murphy and Brad Falchuk's award-winning"
                      "hit anthology series American Horror Story. The series"
                      "features a different horror story in each episode...",style:
                  TextStyle(color: Colors.white60),
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'see more',
                    trimExpandedText: 'see less',
                    lessStyle: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 20),
                    moreStyle: TextStyle(fontSize: 20,color: Colors.white,
                        fontWeight:FontWeight.bold),
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){},
                      child: SizedBox(
                        width: 200,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              Icon(Icons.play_arrow,color: Colors.black,),
                              Text("Watch Now",style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                      )),
                ),
                Container(
                  height: 300,
                  child: Image.network("https://popscoped.com/wp-content/uploads/2022/07/Vikram-Part-2-Release-Date.jpg",
                    fit: BoxFit.fill,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text("VIKRAM",style:
                  GoogleFonts.aBeeZee(color: Colors.white,
                      fontSize: 25,letterSpacing: 2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text("Blockbuster",style: TextStyle(
                      color: Colors.yellow
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ReadMoreText("2022 . 5 Languages . Action . Thriller . Tragedy"
                      "A covert investigation changes its course when special officer"
                      "Amar encounters an unrelenting Vikram and his pursuit to take"
                      "down a notorious drug cartel...",style: TextStyle(color: Colors.white60),
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'see more',
                    trimExpandedText: 'see less',
                    lessStyle: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 20),
                    moreStyle: TextStyle(fontSize: 20,color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: ElevatedButton(onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          children: [
                            Icon(Icons.play_arrow,color: Colors.black,),
                            Text("Watch Now",style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    child: Image.network("https://deadline.com/wp-content/uploads/2023/10/Aarya-teaser-thumbnail_Clean-image.jpg?w=681&h=383&crop=1",
                      fit: BoxFit.fill,),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 310),
                  child: Text(
                    "AARYA",
                    style: GoogleFonts.cabin(color: Colors.white,fontSize: 22),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text("SEASON 3",style: TextStyle(
                      color: Colors.blueAccent
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 190),
                  child: Text("Season 3 releasing on Nov 3",style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ReadMoreText("2 Seasons . 7 Languages . Drama .Thriller"
                      " The Sherni is back again, and she is all set to end it all. Will she succeed?... ",
                    style: TextStyle(color: Colors.white60),
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'see more',
                    trimExpandedText: 'see less',
                    lessStyle: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 20),
                    moreStyle: TextStyle(fontSize: 20,color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: ElevatedButton(onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          children: [
                            Icon(Icons.play_arrow,color: Colors.black,),
                            Text("Watch Now",style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      )),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
