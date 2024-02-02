import 'package:flutter/material.dart';

class CardViewScreen extends StatefulWidget {
  const CardViewScreen({Key? key}) : super(key: key);

  @override
  State<CardViewScreen> createState() => _CardViewScreenState();
}

class _CardViewScreenState extends State<CardViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card View Screen'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Welcome Message'),
                  subtitle: Text(
                      'Welcome to The Marriage Anniversary of Md Robayet Bin Raht'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(onPressed: () {}, child: const Text('Accept')),
                    TextButton(onPressed: () {}, child: const Text('Reject')),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 16.0), // Add some space between the cards

            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: (){
                  debugPrint('Card Taped');
                },
                child: const SizedBox(
                  width: 300,
                  height: 300,
                  child: Center(
                      child: Column(
                    children: [
                      Text("Loving You is a Losing Games",
                      style: TextStyle(fontSize: 18),),
                      Text("Some One  You Loved",
                        style: TextStyle(fontSize: 18),),
                      Text("Loving You is a Losing Games",
                        style: TextStyle(fontSize: 18),),
                      Text("At My Worst",
                        style: TextStyle(fontSize: 18),),
                    ],
                  )),
                ),

              ),

          ),
          const SizedBox(height: 16),
           Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.elliptical(15, 10))
            ),
            child: const SizedBox(
              height: 300,
              width: 300,
              child: Center(
                child: Text('OutLine Card '),
              ),
            ),
          ),
          const SizedBox(height: 16),
           Card(
            elevation: 0,
            color:Theme.of(context).colorScheme.surfaceVariant,
          child: const SizedBox(
            height: 300,
              width: 300,
              child: Center(child: Text('Filled Card ')),
            ),
          ),
          const SizedBox(height: 16),
          const Card(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Center(
                child: Text('Elevated Card '),
              ),
            ),
          )
        ],
      ),
    );
  }
}
