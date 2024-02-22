import 'package:flutter/material.dart';
import 'package:vijayinfo/HomeScreen.dart';

class Espresso extends StatefulWidget {
  const Espresso({super.key});

  @override
  State<Espresso> createState() => _EspressoState();
}

class _EspressoState extends State<Espresso> {
  int _value = 0;

  void _increment() {
    setState(() {
      _value++;
    });
  }

  void _decrement() {
    setState(() {
      if (_value > 0) {
        _value--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft:  Radius.circular(30),
                        bottomRight:  Radius.circular(30),
                        bottomLeft:  Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/coffee.jpeg"),
                        fit: BoxFit.cover
                      )
                    ),

                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>HomeScreen())
                        );
                      },
                      child: Container(
                        height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all()
                          ),
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 30,
                    child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all()
                        ),
                        child: Center(child: Text("* 4.5",style: TextStyle(color: Colors.orange),))
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Espresso",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("\$6.75",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight:FontWeight.bold),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 255.0),
                  child: Text("With Milk",style: TextStyle(color: Colors.orange),),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 240.0),
              child: Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text("Espresso,(Italian:('fast,express')a strong brew\n"
                  "of coffee producted by forcing boiled water\n"
                  "under pressure through finely ground coffee.",textAlign: TextAlign.start,style: TextStyle(color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 245.0),
              child: Text("See More",style: TextStyle(color: Colors.orange),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220.0),
              child: Text("Coffee Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/pepci.jpeg"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all()
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                        image: DecorationImage(
                            image: AssetImage("assets/pepci.jpeg"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all()
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pepci.jpeg"),
                        fit: BoxFit.cover
                      ),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all()
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Column(
                    children: [
                      IconButton(
                        color: Colors.black,
                        icon: Icon(Icons.remove),
                        onPressed: _decrement,
                      ),
                      Text(
                        '$_value',
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                        color: Colors.black,
                        icon: Icon(Icons.add),
                        onPressed: _increment,
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all()
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock,color: Colors.white,),
                  Text("Add To bag",style: TextStyle(color: Colors.white,fontSize: 17),)
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
