// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mapping/constants/colors.dart';
import 'package:mapping/views/maps.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Maps();
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title: Text('Winy'),
        elevation: 0,
        backgroundColor: appBarColor,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Icon(Icons.wine_bar_outlined),
          SizedBox(width: 10,)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        foregroundColor: currentTab == 0? Colors.black : Colors.white,
        onPressed: (){
        setState(() {
          currentTab = 0;
          currentScreen = Maps();
        });
      },
      backgroundColor: appBarColor,
      child: Icon(Icons.home)),
      bottomNavigationBar: BottomAppBar
      (
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        color: appBarColor,
        child: Container
        (
          height: 60,
          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentTab = 1;
                      // currentScreen = ProduitList();
                    });
                  },
                  minWidth: 40,
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.list,
                      color: currentTab == 1? Colors.black : Colors.white,),
                      Text('Liste des produits', style: TextStyle(color: currentTab == 1? Colors.black : Colors.white),)
                    ],
                  ),),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentTab = 2;
                      // currentScreen = Evaluation();
                    });
                  },
                  minWidth: 40,
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.star,
                      color: currentTab == 2? Colors.black : Colors.white,),
                      Text('Evaluations', style: TextStyle(color: currentTab == 2? Colors.black : Colors.white)),
                    ],
                  ),),
                ],
              )
            ],
          )
        ),
      ),
      // body: PageStorage(bucket: bucket, child: currentScreen),
    );
  }
}