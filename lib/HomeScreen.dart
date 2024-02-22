import 'package:flutter/material.dart';

import 'Espresso.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   late double height, width;

   int a=0;
   final Page=[
     // Financial()

   ]  ;

   void tap(index)
   {
     setState(() {
       a=index;
     });
   }
   List b=[
     "With Milk",
     "With cream + cookies"
   ];
   List c =[
     "\$6.75",
     "\$7.75",
   ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height*.5,
                decoration: BoxDecoration(
                  color: Colors.black
                ),
              ),
              Container(
                height: height*.5,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 280,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.orange,
                              child: Icon(Icons.search,color: Colors.white,)),
                        ),
                        labelText: 'Search Cafe or Coffee',suffixStyle: TextStyle(color: Colors.orange),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage("assets/face.jpg"),
                        fit: BoxFit.cover

                      )
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0,left: 28),
            child: Text("Good Morning",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140.0,left: 30),
            child: Text("Grab your first in this morning",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white54),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190.0,left: 15),
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.filter_list, color: Colors.white,),
                          Text("Filter", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                 // Add spacing between cards
                  Card(
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(child: Text("Espresso", style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  // Add spacing between cards
                  Card(
                    child: Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(child: Text("Cappuccino", style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  // Add spacing between cards
                  Card(
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(child: Text("Latte", style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            )


          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Espresso())
              );
            },
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Card(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 25,),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Espresso",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight:FontWeight.bold),),
                                        Text("* 4.5",style: TextStyle(color: Colors.orange),)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 130.0),
                                    child: Text("WithMilk"),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(c[index],
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all()
                                          ),
                                          child: Icon(Icons.add),
                                        ),
                                      )
                                    ],
                                  ),


                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 240,
                          child: Center(
                              child:Container(
                                height: 100,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                    border: Border.all(),
                                    image: DecorationImage(
                                        image: AssetImage("assets/coffee.jpeg"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              )

                          ),
                        ),

                      ] ,
                    ),
                  );

                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500.0,left: 30),
            child: Text("Today's Deal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Card(
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 120,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20)
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage("assets/coffee1.jpeg"),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                              Column(
                                children: [
                                  Text("BigMac + Fries",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60.0),
                                    child: Text("* 4.5",style: TextStyle(color: Colors.orange),),
                                  ),
                                  Row(

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("\$ 12.75",style: TextStyle(fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "\$ 20.56",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            decoration: TextDecoration.lineThrough,color: Colors.black
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 360,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()
                    ),
                    child: Center(child: Icon(Icons.add)),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 285,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()
                    ),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 710.0),
            child: BottomNavigationBar(
              backgroundColor: Colors.blue,
              items: [


                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.black),
                BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite',backgroundColor: Colors.black),
                BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notification',backgroundColor: Colors.black),
                BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person',backgroundColor: Colors.black),

              ],

              currentIndex: a,
              onTap: tap,


            ),
          ),

        ],
      ),
    );
  }
}
