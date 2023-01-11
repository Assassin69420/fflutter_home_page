import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  const NavBar({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          UserAccountsDrawerHeader(accountName: const Text("User_name"),
              accountEmail: const Text("example@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://docplayer.net/docs-images/98/136810321/images/3-0.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://www.eduvidya.com/admin/Upload/Institutes/637432041644106499_East%20West%20College%20of%20Management.jpg'),
                fit: BoxFit.cover
              )
            ),

          )
          , ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: ()=> null,
          )
          , ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: ()=> null,
          )
          , ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setting'),
            onTap: ()=> null,
          )
          , ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Log Out'),
            onTap: ()=> null,
          )

        ],
      ),
    );
  }
}