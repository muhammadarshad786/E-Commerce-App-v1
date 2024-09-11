import 'package:flutter/material.dart';
import 'package:intern/Views/Screen/fourth.dart';
import 'package:intern/Views/Screen/secondscreen.dart';
import 'package:intern/Views/Screen/thirdscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int screenpageindex=0;
    bool colr=false;
static List<Widget> screenpage=<Widget>[
const  HomePage(),
const HomePage(),
const ThirdScreen(),
const FourthScreen(),
const FourthScreen()
  

];
  @override

  Widget build(BuildContext context) {
    return Scaffold(


        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: screenpageindex,
          selectedItemColor: Color(0xff13548D),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontFamily: 'OpenSansBold',fontSize: 9),
          unselectedLabelStyle: TextStyle(fontFamily: 'OpenSansBold',fontSize: 9),

          showUnselectedLabels: true,
          onTap: (index){
            setState(() {
          screenpageindex=index;
     
        });
      },
          items: [
//
        BottomNavigationBarItem(
          activeIcon: Image.asset('assets/icons/Shop Icon.png',),
            backgroundColor: Colors.white,
            icon: Image.asset('assets/icons/Shop Icon.png',height: 20,width: 20,color: Colors.grey,),label: 'Home'),
        BottomNavigationBarItem(
            activeIcon: Image.asset('assets/icons/Group 4050.png',color: Color(0xff13548D),),
            backgroundColor: Colors.white,
            icon: Image.asset('assets/icons/Group 4050.png',height: 20,width: 20,),label: 'Categories'),
        BottomNavigationBarItem(
            activeIcon: Image.asset('assets/icons/Group 2557.png',color: Color(0xff13548D),),
            backgroundColor: Colors.white,
            icon: Image.asset('assets/icons/Group 2557.png',height: 20,width: 20,),label: 'News Feed'),
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            activeIcon: Image.asset('assets/icons/bottom heart.png',color: Color(0xff13548D),),
            icon: Image.asset('assets/icons/bottom heart.png',height: 20,width: 20,),label: 'Wishlist'),
        BottomNavigationBarItem(
            activeIcon: Image.asset('assets/icons/User Icon.png',color: Color(0xff13548D),),
            backgroundColor: Colors.white,
            icon: Image.asset('assets/icons/User Icon.png',height: 20,width: 20,),label: 'Account'),
          
        
        

        ],),

      body: SafeArea(
        child: IndexedStack(
        children: screenpage,
        index: screenpageindex,),
      ),
    );
  }
}