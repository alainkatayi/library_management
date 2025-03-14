import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/img_1.png",
            ),

            SizedBox(height: 50,),

            SizedBox(
              height: 80,
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Email",
                    hintStyle: const TextStyle(fontWeight: FontWeight.bold)

                ),
              ),
            ),


            SizedBox(
              height: 80,
              width: 400,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Mot de passe",
                    hintStyle: const TextStyle(fontWeight: FontWeight.bold)
                ),
              ),
            ),

            SizedBox(height: 60,),

            SizedBox(
              height: 80,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/dashboard");
                },
                child: Text("Se connecter",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              ),
            )

          ],
        ),
      ),
    );
  }

}