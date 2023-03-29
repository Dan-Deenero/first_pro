import 'package:flutter/material.dart';

void main() => runApp(Home());


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Color(0xFF558D97),
          child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFF99BFC6),),
                  child: FlutterLogo(
                    size: 10,
                  ),
                ),
                ListTile(
                  hoverColor: Colors.amber,
                  onTap: () {},
                  leading: Icon(Icons.home, color: Color(0xFFC4DDDE),),
                  title: Text('Home', style: TextStyle(color: Color(0xFFFFFFFF)),),
                  trailing: Icon(Icons.arrow_circle_right, color: Color(0xFFC4DDDE),),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.shop, color: Color(0xFFC4DDDE),),
                  title: Text('Shop', style: TextStyle(color: Color(0xFFFFFFFF)),),
                  trailing: Icon(Icons.arrow_circle_right, color: Color(0xFFC4DDDE),),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.shopping_cart_outlined, color: Color(0xFFC4DDDE),),
                  title: Text('Order', style: TextStyle(color: Color(0xFFFFFFFF)),),
                  trailing: Icon(Icons.arrow_circle_right, color: Color(0xFFC4DDDE),),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.exit_to_app, color: Color(0xFFC4DDDE),),
                  title: Text('Logout', style: TextStyle(color: Color(0xFFFFFFFF)),),
                  trailing: Icon(Icons.arrow_circle_right, color: Color(0xFFC4DDDE),),
                )
              ]
          )
        ),
        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Color(0xFF3D6176),
        ),
        body: Row(
          children:[
            Expanded(
              flex: 3,
              child: Container(
                padding:const EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text('1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.pinkAccent,
                child: Text('2'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.amber,
                child: Text('3'),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF3D6176),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, color: Color(0xFFC4DDDE),),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded, color: Color(0xFFC4DDDE),),
                  label: 'search'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_outlined, color: Color(0xFFC4DDDE),),
                  label: 'tools'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_music_rounded, color: Color(0xFFC4DDDE),),
                  label: 'library'
              ),
          ]
        ),
      ),
    );
  }
}
