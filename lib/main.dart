import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size(100, 105),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Type Your Location",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Bouddha, Kathmandu",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.hotel,
                        color: Colors.white,
                      ),
                      Text(
                        "Hotel",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        color: Colors.white,
                      ),
                      Text(
                        "Restaurent",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_cafe,
                        color: Colors.white,
                      ),
                      Text(
                        "Cafe",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              width: 400,
              height: 390,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: Colors.white),
              child: Stack(clipBehavior: Clip.none, children: [
                Image.network(
                  'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 20,
                  top: 200,
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        "400rs",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 280,
                  child: Text(
                    "Awesome room near Boddha",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                Positioned(
                    left: 10, top: 310, child: Text("Boddha Kathamandu")),
                Positioned(
                  left: 10,
                  top: 330,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Text(
                        "(220 reviews)",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}