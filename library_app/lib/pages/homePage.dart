import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [
            // image
            Image.asset(
              "assets/images/img.png",
              width: 400,
            ),
            SizedBox(height: 150,),
            // Texte
            Text(
              "LIBRARY MANAGEMENT",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,letterSpacing: 1.5),
            ),

            SizedBox(height: 180,),

            SizedBox(
              height: 80,
              width: 400,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/login");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                child: Text(
                  "CONTINUER",
                  style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}