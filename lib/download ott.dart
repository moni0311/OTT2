import 'package:flutter/material.dart';

import 'OTT/home ott.dart';

class down extends StatefulWidget {
  const down({super.key});

  @override
  State<down> createState() => _downState();
}

class _downState extends State<down> {

  @override
  Widget build(BuildContext context) {
    var floatingActionButton;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue,Colors.indigoAccent],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,

          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                    },
                    child: Icon(Icons.arrow_back)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Downloads",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            SizedBox(
              height: 110,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow)

                      ),
                      child: Image.network("https://img1.hotstarext.com/image/upload/f_auto,t_hcdl/sources/r1/cms/prod/5511/1565511-h-34fd6660140c",
                        fit: BoxFit.fill,),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Text("Pon Manickavel",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text("2h 10m.1.6GB"),

                      ],
                    ),

                  ],
                ),
              ),


            ),



          ],
        ),
      ),
    );
  }
}
