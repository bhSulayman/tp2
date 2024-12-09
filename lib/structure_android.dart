import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _coeur = Icon(Icons.favorite_border, color: Colors.white,);
  bool _likeBool = false;
  var _selectedIndex = 0;
  var _affichage = '0 : Accueil';

  void _likeThis(){
    setState(() {
      if (_likeBool){
        _coeur = Icon(Icons.favorite_border, color: Colors.white,);
        bool _likeBool = false;
      }
      else {
        _coeur = Icon(Icons.favorite, color: Colors.white,);
        bool _likeBool = true;
      }
    });
  }

  void _itemClique(int index){
    setState((){
      _selectedIndex = index;
      if (_selectedIndex ==0){
        _affichage = '0 : Accueil';
      }
      else if (_selectedIndex ==1){
        _affichage = '1 : Mon compte';
      }
      else{
        _affichage = '2 : Panier';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            widget.title
            ),
          actions: <Widget>[
            IconButton(onPressed: _likeThis, icon: _coeur)
        ],
        backgroundColor: const Color.fromARGB(255, 34, 54, 235),
        ),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_affichage),
              Image.asset('../Assets/Images/snk.png',
              width: 500,
              height: 500,
              ),
              Image.network('https://m.media-amazon.com/images/S/pv-target-images/cf755c4b667eef101b8522c2202c27ca105931e63a2a56862df180a4b7a371ea._BR-6_AC_SX720_FMjpg_.jpg',
              width: 300,
              height: 300,
              ),
            ],
          ),
        ),

        drawer: Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu de navigation'),
            ),
            ListTile(
              title: const Text('Accueil'),
              selected: _selectedIndex == 0,
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Mon compte'),
              selected: _selectedIndex == 1,
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Panier'),
              selected: _selectedIndex == 2,
              onTap: () {
              },
            ),
          ],
        ),
      ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 34, 54, 235),
          onPressed: (){},
          child: const Icon(Icons.abc, color: Colors.white, size: 30),
          ),


        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.child_care),
              label: 'Mon compte'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.baby_changing_station),
              label: 'Panier'
            ),
          ],
          onTap: _itemClique,
          currentIndex: _selectedIndex,
        ),


    );
  }
}