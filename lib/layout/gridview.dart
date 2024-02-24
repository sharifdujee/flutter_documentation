import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Screen '),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.green),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: 250,
              height: 250,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.green.withAlpha(10),
                          Colors.green,
                          Colors.greenAccent
                        ],
                      ),
                    ),
                    child: const Text(
                      'National Flag',
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    /*CustomScrollView(
        primary: false,
        slivers: <Widget> [
          SliverPadding(padding: const EdgeInsets.all(20.0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.00),
                color: Colors.green[100],
                child: const Text('Welcome to arafat birthday'),

              ),
              Container(
                padding: const EdgeInsets.all(8.00),
                color: Colors.green[100],
                child: const Text('Welcome to arafat birthday'),

              ),
              Container(
                padding: const EdgeInsets.all(8.00),
                color: Colors.green[100],
                child: const Text('Welcome to arafat birthday'),

              ),
              Container(
                padding: const EdgeInsets.all(8.00),
                color: Colors.green[100],
                child: const Text('Welcome to arafat birthday'),

              ),
            ],),
          )
        ],
      )*/
    /*GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8.00),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.00),
            color: Colors.teal[100],
            child: const Text('Welcome to the world of technology'),
          ),
          Container(
            padding: const EdgeInsets.all(8.00),
            color: Colors.teal[200],
            child: const Text('Welcome to the world of technology'),
          ),
          Container(
            padding: const EdgeInsets.all(8.00),
            color: Colors.teal[300],
            child: const Text('Welcome to the world of technology'),
          ),
          Container(
            padding: const EdgeInsets.all(8.00),
            color: Colors.teal[400],
            child: const Text('Welcome to the world of technology'),
          ),
          Container(
            padding: const EdgeInsets.all(8.00),
            color: Colors.teal[500],
            child: const Text('Welcome to the world of technology'),
          ),
          Container(
            padding: const EdgeInsets.all(8.00),
            color: Colors.teal[600],
            child: const Text('Welcome to the world of technology'),
          ),
          Container(
            padding: const EdgeInsets.all(8.00),
            color: Colors.teal[700],
            child: const Text('Welcome to the world of technology'),
          ),
          Container(
            padding: const EdgeInsets.all(8.00),
            color: Colors.teal[800],
            child: const Text('Welcome to the world of technology'),
          ),
        ],
      ),*/
  }
}
