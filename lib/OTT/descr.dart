import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../model.dart';
import 'home ott.dart';



class desc extends StatefulWidget {
  const desc({super.key});

  @override
  State<desc> createState() => _descState();
}

class _descState extends State<desc> {
  late FlickManager flickManager;

  // @override
  // void initState() {
  //   super.initState();
  //   flickManager = FlickManager(
  //       videoPlayerController:
  //       VideoPlayerController.network(
  //         "https://youtube.com/shorts/Co_LHG4JKpQ?si=E8WQAJ_pTZZXQXAV"
  //
  //   ),
  //   );
  // }
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }




  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'vnprCkjMitY',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black,Colors.blueGrey,],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // GestureDetector(
              //   onTap: (){
              //     setState(() {
              //       Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
              //     });
              //   },
              // ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => home()),
                  );

                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 360),
                  child: Icon(
                    Icons.arrow_back,color: Colors.white,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 260,
                  width: 550,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("goals/my3.png"),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
              ),
              Text("MY3",style: TextStyle(
                  color: Colors.white,fontSize: 40
              ),),
              Text("2023. 1 Season. 7 Languages",style: TextStyle(
                color: Colors.white,
              ),),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(onPressed: (){

                }, style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black
                ),
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow),
                        Text("Subscibe to Watch"),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(child: Text("A rich enterpreneur struggling with an allergy to human touch"
                    "finds a solution in a robot. But when if crashes before delivery,"
                    "a 'real' replacement is sent",style: TextStyle(
                    color: Colors.white38
                ),)),
              ),
              Container(
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text("Romance | Comedy",style: TextStyle(
                    color: Colors.white,fontSize: 16
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextButton(onPressed: (){},
                      child:
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.add,color: Colors.white,),
                              Text("Watchlist",style: TextStyle(
                                  color: Colors.white30
                              ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: TextButton(onPressed: (){},
                                child: Column(
                                  children: [
                                    Icon(Icons.share,color: Colors.white,),
                                    Text("Share",style: TextStyle(
                                        color: Colors.white30
                                    ),),
                                  ],
                                )),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 275),
                child: Text("More Like This",style: TextStyle(
                    color: Colors.white
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent
                    ),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list5.length,
                        itemBuilder: (BuildContext, int index){
                          return FittedBox(
                            fit: BoxFit.cover,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 1),
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.tealAccent
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: (list5[index].image5),
                                ),

                              ),
                            ),
                          );
                        }
                    )

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 330),
                child: Text("Trailer",style: TextStyle(
                    color: Colors.white
                ),),
              ),
              //     Container(
              // child: FlickVideoPlayer(
              // flickManager: flickManager,
              // ),
              //
              //     ),
              Container(
                height: 400,
                child:YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}
