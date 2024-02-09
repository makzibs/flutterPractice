import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() =>  profilePageState();
}

class  profilePageState extends State<profilePage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

            body: Container(
              height: size.height,
              width: size.width,

              decoration: BoxDecoration(
              color: Colors.green.shade200,

              ),
                    child: Column(
                     children: [
                      Container(
                        height: size.height*0.4,
                        width: size.width,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                         color: Colors.green.shade400,
                         borderRadius: BorderRadius.circular(10.0),
                         boxShadow: [
                           BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 0, // Spread radius
                               blurRadius: 10, // Blur radius
                               offset: Offset(0, 5), // Horizontal and vertical offset of shadow
                              ),
                          ],
                         ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 50, // Radius of the circle
                                backgroundImage: AssetImage('assets/profile.jpeg'),
                              ),
                              Column(
                                children: [
                                   Text("Adam Sandler"),
                                   Text("New York, USA")
                    ],
                  ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                        mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.school,
                                ),
                              SizedBox(width: 100,),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("School"),
                                    Text("Tampere University")
                                  ],
                                )
                              ],
                            ),

                            SizedBox(height: 20,),
                            Row(

                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.person,
                                ),
                              SizedBox(width: 100,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nick Name"),
                                    Text("Mak")
                                  ],
                                )
                              ],
                            ),

                           ],
                        ),
                      ),
                     ],






                    ),
            ),
          );

  }
}


/* Column(children: [
                   CircleAvatar(
                     radius: 50, // Radius of the circle
                     backgroundImage: AssetImage('assets/profile.jpeg'),
                  ),

                  Column(
                    children: [
                      Text("Adam Sandler"),
                      Text("New York, USA")
                    ],
                  ), */
