import 'package:flutter/material.dart';
import 'package:library_app/pages/myBottomNavigationBar.dart';

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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 130,
                    width: 145,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              spreadRadius: 5,
                              blurRadius: 15,
                              offset: Offset(0, 4)
                          )
                        ]
                    ),
                    child: const Center(
                      child: Icon(Icons.school,size: 80,),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 145,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              spreadRadius: 5,
                              blurRadius: 15,
                              offset: Offset(0, 4)
                          )
                        ]
                    ),
                    child: const Center(
                      child: Icon(Icons.favorite,size: 80,),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 145,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 4)
                        )
                      ]
                    ),
                    child: const Center(
                      child: Icon(Icons.face,size: 80,),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 40,),

            Container(

              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("LIVRES",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'Helvetica'),),
                      Text("Plus",style: TextStyle(fontSize: 20,color: Colors.blue),),
                    ],
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 210,
                    width: 145,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Image.asset(
                      "/home/exauce/Mobile/library_app/assets/images/img_3.png",
                    ),
                  ),
                  Container(
                    height: 210,
                    width: 145,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "/home/exauce/Mobile/library_app/assets/images/img_4.png"
                    ),
                  ),
                  Container(
                    height: 210,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Image.asset(
                      "/home/exauce/Mobile/library_app/assets/images/img_5.png",
                      height: 100,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

}