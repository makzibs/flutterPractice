import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {

  listtileitem() {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.all(Radius.circular(10)),

      ),
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/img1.png'), fit: BoxFit.cover, ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),

            ),
            SizedBox( height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rara Lake", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),),

                Row(
                  children: [
                    Icon(
                      Icons.star, // The icon you want to use
                      size: 20, // Size of the icon
                      color: Colors.yellow.shade800,
                    ),
                    SizedBox(width: 10,),
                    Text("4.7", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200), ),
                  ],
                ),


              ],
            ),
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_pin, // The icon you want to use
                    size: 20, // Size of the icon
                    color: Colors.yellow.shade800,
                  ),
                  Text("Mugu, Nepal", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  listtileitemColumn() {
    return  Container(
      height: 150,
      margin: EdgeInsets.only(right: 10,top: 10, left: 10, bottom: 10),
        decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.all(Radius.circular(10)),

      ),
      child: Row(

        children: [
          Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/img.png'), fit: BoxFit.cover, ),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),

          ),
          SizedBox(
            width: 10,
          ),
          Container(

            child: Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rara Lake"),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin, // The icon you want to use
                        size: 20, // Size of the icon
                        color: Colors.yellow.shade800,
                      ),
                      SizedBox(width: 5,),
                      Text("Mugu, Nepal")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.star, // The icon you want to use
                        size: 20, // Size of the icon
                        color: Colors.yellow.shade800,
                      ),
                      SizedBox(width: 5,),
                      Text("4.7")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),padding: EdgeInsets.only(left: 10, right: 10),
    );
  }
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        // Set a fixed height for the horizontal ListView
        height: size.height,
        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        child: Container(
          child:  ListView(
            physics: NeverScrollableScrollPhysics(),
            //padding: EdgeInsets.zero,
            //scrollDirection: Axis.horizontal,
            children: [
              Container(
                // decoration: BoxDecoration(
                //   border : Border.all(
                //    color: Colors.red,
                //    width: 2.0,
                // ),

                // ),
                height: 130,
                width: size.width*0.8,
                child: Row(
                  // This next line does the trick.
                  //scrollDirection: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.menu, // The icon you want to use
                        size: 50, // Size of the icon
                        color: Colors.black, // Color of the icon
                      ),
                    ),
                    Container(
                      child: Text(
                        "Home",
                        style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      child: CircleAvatar(

                      ),
                    ),
                  ],
                ),
              ),
              Container(

                alignment: Alignment.center,

                child: Column(
                  children: [
                    Container(
                      child: Text("Wonderful Nepal", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),),
                    ),

                    Container(
                      child: Text("Let's explore together", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),),
                    )

                  ],


                ),
              ),


              SizedBox(
                height: 20,
              ),
              Container(

                alignment: Alignment.center,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("All", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),),
                    ),

                    Container(
                      child: Text("Popular", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),),
                    ),

                    Container(
                      child: Text("Nearby", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),),
                    ),

                    Container(
                      child: Text("Recommended", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),),
                    )

                  ],


                ),
              ),
              SizedBox(height: 20,),

              Container(

                height: 300,
                width: 360,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return listtileitem();
                    }),
              ),

              SizedBox(
                height: 10,
              ),

             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   "Top Places", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),
                 ),
                 Container(
                   height: 300,
                   // margin: EdgeInsets.only(left: 10, right: 10),
                   child: ListView.builder(
                       padding: EdgeInsets.zero,
                       //physics:  NeverScrollableScrollPhysics(),
                       // shrinkWrap: true,
                       primary: true,
                       itemCount: 5,
                       //scrollDirection: Axis.horizontal,
                       itemBuilder: (BuildContext context, int index) {
                         return listtileitemColumn();
                       }),
                 ),
               ],
             ),



            ],
          ),
        )
      ),


    );
  }
}
