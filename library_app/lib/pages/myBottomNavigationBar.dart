import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget{
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: 2,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home,size: 40,color: Colors.black,),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.add,size: 70,color: Colors.lightBlueAccent,),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/img_2.png",
            height: 50,
          ),
          label: ""
        )
      ],
    );
  }

}