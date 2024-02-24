import 'package:flutter/material.dart';
import 'package:flutter_documentation/screen/home_screen.dart';
import 'package:flutter_documentation/table/horizontal_data_table.dart';

class CardViewScreen extends StatefulWidget {
  const CardViewScreen({Key? key}) : super(key: key);

  @override
  State<CardViewScreen> createState() => _CardViewScreenState();
}

class _CardViewScreenState extends State<CardViewScreen> {
  int acceptedData = 0;

  get user => user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Welcome Message'),
                  subtitle: Text(
                      'Welcome to The Marriage Anniversary of Md Robayet Bin Rahat'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const DismissableScrren()));
                    }, child: const Text('Accept')),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const GestureDetectorScreen()));
                    }, child: const Text('Reject')),
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScrollSheetScreen()));
              },
              child: const SizedBox(
                width: 300,
                height: 300,
                child: Center(
                    child: Column(
                  children: [
                    Text(
                      "Loving You is a Losing Games",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Some One  You Loved",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Loving You is a Losing Games",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "At My Worst",
                      style: TextStyle(fontSize: 18),
                    ),

                  ],
                )),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(15, 10))),
              child: SizedBox(
                height: 300,
                width: 300,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Center(

                          child: Text('OutLine Card '),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                      height: 200,
                      child: AbsorbPointer(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade200,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const IgnoringScreenExample()));
                            },
                            child: const Text('Back To Home')),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: Column(
              children: [
                const SizedBox(
                  height: 300,
                  width: 300,
                  child: Center(child: Text('Filled Card ')),
                ),
                ElevatedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const IgnoringScreenExample()));
                }, icon: const  Icon(Icons.directions_bike), label: const Text('Ignore')),
                ElevatedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const  InteractiveViewScreen()));
                }, icon: const  Icon(Icons.directions_railway), label: const Text('Interactive')),
                ElevatedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>   HorizontalTableScreen(user: user,)));
                }, icon: const  Icon(Icons.directions_railway), label: const Text('Table')),
                ],

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
           ),
          Row(children: <Widget>[
            Expanded(
              child: Draggable<int>(
                data: 10,
                feedback: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Icon(Icons.directions_run)
                ),
                childWhenDragging: Container(
                  height: 100,
                  width: 100,
                  color: Colors.pinkAccent,
                  child: const Center(
                    child: Text('Dragging'),
                  ),
                ),
                child: Container(
                  height: 100,
                width: 100,
                color: Colors.lightGreenAccent,
                child: const Center(
                  child: Text('Draggable'),
                ),),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: DragTarget<int>(
                onWillAccept: (val) => true,
                builder: (context,
                    List<dynamic> accepted,
                    List<dynamic> rejected
                    ) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.cyan,
                    child: Center(
                      child: Text('value is Updated to $acceptedData'),
                    ),

                  );


                },
                onAccept: (int data){
                  setState(() {
                    acceptedData += data;

                  });
                },
              ),
            ),
          ]
          ),

        ],
      ),
    );
  }
}

class DismissableScrren extends StatefulWidget {
  const DismissableScrren({super.key});

  @override
  State<DismissableScrren> createState() => _DismissableScrrenState();
}

class _DismissableScrrenState extends State<DismissableScrren> {
  List<int> items = List<int>.generate(100, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          padding: const EdgeInsets.all(12.0),
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                background: Container(
                  color: Colors.green,
                ),
                key: ValueKey<int>(items[index]),
                onDismissed: (DismissDirection direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: ListTile(
                  title: Text('Item ${items[index]}'),
                ));
      
            
          }),
    );

  }
}
class ScrollSheetScreen extends StatelessWidget {
  const ScrollSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: DraggableScrollableSheet(builder: (BuildContext context, ScrollController scrollController){
          return Container(
            color: Colors.blue[100],
            child: ListView.builder(
              controller:  scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index){
                return ListTile(
                  title: Text('Items: $index'),
                );

                }),
          );

        }),
      ),
    );
  }
}
class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  @override
  Widget build(BuildContext context) {
    bool lightIsOn = false;
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child:  Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(15),
              child: Icon(Icons.lightbulb_outline,
                color: lightIsOn ?Colors.yellow.shade600: Colors.black,
                size: 100,
              ),

            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  lightIsOn = !lightIsOn;
                });
              },
              child: Container(
                color: Colors.yellow.shade600,
                padding: const EdgeInsets.all(12),
                child: Text( lightIsOn? 'Turn Light OFF' : 'Turn Light ON' ),

              ),


            ),

          ],
        ),
      ),
    );
  }
}
class IgnoringScreenExample extends StatefulWidget {
  const IgnoringScreenExample({super.key});

  @override
  State<IgnoringScreenExample> createState() => _IgnoringScreenExampleState();
}

class _IgnoringScreenExampleState extends State<IgnoringScreenExample> {
  bool ignoring = false;
  void setIgnoring(bool newValue){
    setState(() {
      ignoring = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {

    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        Text('Ignoring : $ignoring'),
        IgnorePointer(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(18),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const InteractiveViewScreen()));

                },
                child: const Text('OK'),
              );
            }
          ),

        ),
        FilledButton(onPressed: (){
          setIgnoring(!ignoring);
        }, child:  Text(ignoring ? 'set Ignoring to false ' : 'set Ignoring True'))
      ],

    );
  }
}

class InteractiveViewScreen extends StatelessWidget {
  const InteractiveViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(18),
          maxScale: 1.6,
          minScale: 0.1,
          child: Container(
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color> [
                    Colors.red,
                    Colors.orange,
                    Color(0xff1f005c),
                    Color(0xff5b0060),
                    Color(0xff870160),
                    Color(0xffac255e),
                    Color(0xffca485c),
                    Color(0xffe16b5c),
                    Color(0xfff39060),
                    Color(0xffffb56b),
                  ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              )
            ),
          )),

    );
  }
}




