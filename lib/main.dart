import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo/NavBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({super.key});

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidget();
}

class _MyStatelessWidget extends State<MyStatelessWidget> {
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        endDrawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network("https://res.cloudinary.com/abhi894/image/upload/v1589277647/ix2yiz9nynymepxkfahn.png",
              width: 90,
              height: 90,
              fit: BoxFit.cover,),
          ),

          title: const  Text('East West')
        ),
      body: SizedBox(
        width: double.infinity,
        height: 100,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 30,
          children: [
            buildCard(),
            const SizedBox(width: 10),
            buildCard(),
            const SizedBox(width: 10),
            buildCard(),
            const SizedBox(width: 10),
            buildCard(),
            const SizedBox(width: 10,),
            buildCard(),
            const SizedBox(width: 10,),
            buildCard(),
            const SizedBox(width: 10,)
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.purple.shade300,
          animationDuration: const Duration(microseconds: 300000),
          onTap: (index){
            setState(() {
              selectedPage = index ;
            });
          },
          items: const [
            Icon(Icons.home,),
            Icon(Icons.favorite,),
            Icon(Icons.settings)
          ],
        ),
      );
  }

  buildCard()=> Container(
    width: 180,
    height: 140,
    color: Colors.purple.shade700,

  ) ;
}

