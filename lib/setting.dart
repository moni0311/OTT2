import 'package:flutter/material.dart';

import 'OTT/home ott.dart';
import 'OTT/log ott.dart';
class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  bool tik1=false;
  bool tik2=false;
  bool tik3=false;
  bool tik4=false;
  bool tik5=false;
  bool tik6=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        actions: [
          Row(
            children: [
              Icon(Icons.settings,color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Help & Settings",style: TextStyle(color: Colors.white),),
              ),

            ],
          ),

        ],

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue,Colors.indigoAccent],
              begin: Alignment.topCenter,
              end: Alignment.topRight,

            )
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Account Setting",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold
              ),),
              subtitle: Text("Subscription Details & Device Manager"),
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text("Downloads",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold
              ),
              ),
              subtitle: Text("Download quality,storage & more"),
            ),

            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Parental Controls",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold
              ),),
              subtitle: Text("Parental Lock"),
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Help & Support",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold
              ),),
              subtitle: Text("Help Centre"),
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87
                  ),
                  child: Text("Logout",style: TextStyle(
                      color: Colors.white
                  ),)),
            )
          ],
        ),
      ),
    );
  }
}
