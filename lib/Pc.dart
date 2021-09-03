import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class MyHomePagePC extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagePC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 120,
                  height: 200,
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("assets/Me1.png"),
                ),
                Column(
                  children: [
                    Text(
                      'Momen A. El-Otify',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 28),
                    ),
                    Text(
                      'Android Developer \n iOS Developer \n Web Developer',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () => launchURLFB(),
                          child: Image.asset("assets/fb.png"),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        FloatingActionButton(
                            onPressed: () => launchURLINS(),
                            child: Image.asset("assets/ins.png"),
                            backgroundColor: Colors.white),
                        SizedBox(
                          width: 12,
                        ),
                        FloatingActionButton(
                            onPressed: () => launchURLLINK,
                            child: Image.asset("assets/link.png"),
                            backgroundColor: Colors.white),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "About",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  """
              Hello 
              My Name Is Momen Abdezaher 
              I am a Flutter Developer for a year and a half 
              I have little knowledge of Git
              I am a student in management information Systems 
              I have done projects with firebase
              """,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.topLeft,
              child: Text(
                "Addres",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset("assets/map.png"),
                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            InkWell(child: Text("helaly ST,Asyut,Egypt",style: TextStyle(
                              color: Colors.blue
                            ),),onTap: ()=> Map1(),),
                            SizedBox(
                              height: 4,
                            ),
                            InkWell(child: Text("Hurgada,RedSea,Egypt"),onTap: ()=> Map2(),)
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/time.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Any Time")
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Latest projects",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 9),
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () => Project1(),
                child: Text("skurupbilvard",),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 9),
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () => Project2(),
                child: Text("wholesaler store",),),
            ),
            Text("Skills",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 12,),
                Text("*",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
                SizedBox(width: 3,),
                Text("Dart",style: TextStyle(fontSize: 18))
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 12,),
                Text("*",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
                SizedBox(width: 3,),
                Text("\n Flutter",style: TextStyle(fontSize: 18))
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 12,),
                Text("*",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
                SizedBox(width: 3,),
                Text("\n API",style: TextStyle(fontSize: 18))
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 12,),
                Text("*",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
                SizedBox(width: 3,),
                Text("\n Git",style: TextStyle(fontSize: 18))
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 12,),
                Text("*",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
                SizedBox(width: 3,),
                Text("\n Firebase",style: TextStyle(fontSize: 18))
              ],),
          ],
        ),
      ),
    );
  }
}

launchURLFB() async {
  const url = 'https://www.facebook.com/itsabdezaher';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLINS() async {
  const url = 'https://www.instagram.com/momenabdezaher/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLLINK() async {
  const url = 'https://www.linkedin.com/in/momen-abdezaher-8a7aa4208/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: non_constant_identifier_names
Map1() async {
  const url =
      'https://www.google.com.eg/maps/search/asyte/@27.181788,31.1926468,18.71z/data=!4m7!2m6!3m5!1sasyte!2s27.256765,+33.805926!4m2!1d33.8059257!2d27.2567646';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: non_constant_identifier_names
Map2() async {
  const url = 'https://www.google.com.eg/maps/@27.2568649,33.8068324,19.57z';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: non_constant_identifier_names
Project1() async {
  const url = 'https://youtu.be/07T5RZEVZYo';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: non_constant_identifier_names
Project2() async {
  const url = 'https://youtu.be/B5ZbaMbeMY4';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
