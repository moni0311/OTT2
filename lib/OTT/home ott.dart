
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';

import '../colors.dart';






import '../download ott.dart';
import '../model.dart';
import '../new hot ott.dart';
import '../search ott.dart';
import '../setting.dart';
import 'descr.dart';class home extends StatefulWidget {
  const home({super.key});

  @override

  State<home> createState() => _AState();
}

class _AState extends State<home> {
  late FlickManager flickManager;


  //
  @override
  void initState(){
    super. initState();
    flickManager=FlickManager(
        videoPlayerController:
        VideoPlayerController.network("https://new-status-video.com/wp-content/uploads/2023/07/yt1s.com-Jailer-Efx-whatsapp-statusThalaivar-massrajinikanth-jailer.mp4")
    );

  }
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [se,b]
              )
          ),
          child: SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 300,
                      aspectRatio: 16/9,
                      viewportFraction: 1.1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage:true,
                      enlargeFactor: 0.15,
                      scrollDirection: Axis.horizontal,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                    ),
                    // itemCount: list1.length,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index, int)  {
                      return Container(
                        child: FlickVideoPlayer(
                          flickManager: flickManager,
                        ),
                      );
                    }
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130,top: 20),
                  child: SizedBox(
                    width: 170,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context)=>desc() ));
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white12,shape: RoundedRectangleBorder(),

                        ),
                        child: Row(
                          children: [
                            Icon(Icons.play_arrow,color: Colors.white,),
                            Text("Wait to watch",style: TextStyle(color: Colors.white)),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Latest Releases",style: TextStyle(
                      color: Colors.white,fontSize: 20
                  ),),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list2.length,
                        itemBuilder: (BuildContext, int index) {
                          return
                            FittedBox(
                              fit: BoxFit.cover,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 2),
                                child: Container(
                                  color: Colors.blue,
                                  height: 100,
                                  width: 100,
                                  child: CachedNetworkImage(
                                    imageUrl: (list2[index].image1),fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                        }
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("ICC CWC 2023 and More",style: TextStyle(
                          color: Colors.white,fontSize: 20
                      ),),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.orange,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list3.length,
                      itemBuilder: (BuildContext, int index){
                        return FittedBox(
                          fit: BoxFit.cover,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 100,
                                child: CachedNetworkImage(
                                    imageUrl: (list3[index].image3)
                                )
                            ),
                          ),
                        );
                      }
                  ),


                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Up Comming Movies",style: TextStyle(
                      color: Colors.white,fontSize: 20
                  ),),
                ),
                Container(
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list4.length,
                        itemBuilder: (BuildContext, int index){
                          return FittedBox(
                            fit: BoxFit.cover,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                color: Colors.yellow,
                                height: 200,
                                width: 180,
                                child: CachedNetworkImage(
                                  imageUrl: (list4[index].image4),
                                  fit: BoxFit.fill,

                                ),
                              ),
                            ),
                          );
                        }
                    )
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar:  BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(

              icon: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
                  },
                  child: Icon(Icons.home)),
              label: 'Home',

            ),
            BottomNavigationBarItem(

              icon: Container(
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const search()));
                      },
                      child: Icon(Icons.search))),
              label: 'Search',
            ),
            BottomNavigationBarItem(

                icon: Container(

                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>newhot()));
                        },
                        child: Icon(Icons.video_library))),
                label: 'New'
            ),
            BottomNavigationBarItem(

                icon: GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>down()));
                    },
                    child: Icon(Icons.file_download_outlined)),
                label: 'Downloads'
            ),
            BottomNavigationBarItem(icon: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>setting()));
                },
                child: Icon(Icons.person)),
                label: 'My profile')
          ],
        )
    );

  }
}
