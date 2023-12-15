import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'OTT/home ott.dart';



class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    var list7;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
              },
              child: SafeArea(child: Icon(Icons.arrow_back,color: Colors.white,))),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Container(
            height: 40,
            width: 510,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Icon(Icons.search,),
                  ),
                  hintText: 'Movies,shows and more',
                  suffixIcon: Icon(Icons.mic)
              ),
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.black
          ),
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 220,top: 10),
                    child: Text("Recent Search Shows",style: TextStyle(
                        color: Colors.white
                    ),),
                  ),
                  Container(
                    height: 700,
                    width: 400,
                    child: StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0.9,
                      itemCount: list7.length,
                      itemBuilder: (BuildContext context, int index){
                        return Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                color: Colors.yellow,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: CachedNetworkImage(
                              imageUrl: (list7[index].image7),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }, staggeredTileBuilder: (int index) {
                      return StaggeredTile.count(1, index.isEven ? 1.1 : 1.5);
                    },
                    ),
                  ),

                ],

              ),
            ],

          ),
        ),
      ),
    );


  }
}



















































































































































































































































































































































































































































































































