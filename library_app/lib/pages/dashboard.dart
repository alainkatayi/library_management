import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )
              ),

              // Partie au dessus
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Image
                    Image.asset(
                      "assets/images/img_2.png",
                      height: 100,
                    ),
                    // Image

                    SizedBox(height: 20,),

                    SizedBox(
                      height: 110,
                      width: 400,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.filter_list),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Rechercher un livre",


                        ),
                      ),
                    )
                  ],
                ),
              ),

              
            ),
            // Partie au dessus

            SizedBox(height: 80,),

            Container(

              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("CATEGORIES",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'Helvetica'),),
                    Text("Plus",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  ],
                )
              ),
            ),

          ],
        ),
      ),
    );
  }

}