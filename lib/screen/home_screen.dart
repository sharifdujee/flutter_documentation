import 'package:flutter/material.dart';
import 'package:flutter_documentation/screen/gesture_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 18,
        leading: const IconButton(onPressed: null, icon: Icon(Icons.menu,),
          tooltip: 'Navigation Menu',
        ),
        title: const Text('Title Example'),
          centerTitle: true,
        actions:  [
          IconButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const GestureScreen()));
    },icon: const Icon(Icons.home, ))
        ],
      ),
      body: const Center(
        child: Text('Hello Flutter'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const GestureScreen()));
      },
       child: const Icon(Icons.add),),

    );
      /*Material(
      child: Column(
        children: [
          AppBar(
            title:  Text('Example Title',
            //style: Theme.of(context).primaryTextTheme.titleSmall,
            ),
            centerTitle: true,

          )
        ],
      ),
    );*/
      /*Container(
      *//*drawer: Drawer(
        backgroundColor: Colors.grey[600],
        child: ListView(
          padding: const EdgeInsets.all(12.0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(),
              child: Text('Welcome'),
            ),
            const ListTile(
              title: Text('Home Page'),
              subtitle: Text(
                'Sub Menu',
                textDirection: TextDirection.ltr,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: const Text('Back To Home'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Hello Flutter'),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.green,
        titleSpacing: 3,
        toolbarHeight: 40,
        foregroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.picture_as_pdf)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.home_sharp)),
        ],
      ),*//*
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.blue[500],
      ),
      child: Row(
        children: [
           IconButton(onPressed: (){},
               tooltip: 'Navigation Menu',
               icon: const Icon(Icons.menu)),
          const Expanded(child: Text('Ok')),
           IconButton(onPressed: (){}, icon: const Icon(Icons.home))
        ],
      ),*/






  }
}
