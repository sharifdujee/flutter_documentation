import 'package:flutter/material.dart';
import 'dart:math';
class SingleLayoutScreen extends StatefulWidget {
  const SingleLayoutScreen({super.key});

  @override
  State<SingleLayoutScreen> createState() => _SingleLayoutScreenState();
}

class _SingleLayoutScreenState extends State<SingleLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Child Layout'),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton.icon(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AlignScreen()));
            }, icon: const Icon(Icons.dangerous), label: const Text('Align')),
            ElevatedButton.icon(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AspectRatioScreen()));
            }, icon: const Icon(Icons.dangerous), label: const Text('Aspect Ratio')),
            
          ],
        ),
      ),
    );
  }
}
class AlignScreen extends StatelessWidget {
  const AlignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var math;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Align Screen'),
      ),
      body:  SingleChildScrollView(
          child: ColoredBox(
            color: Colors.black,
            child: Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewX(0.3),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: const Color(0xFFE8581C),
                child: const Text('Apartment for rent!'),
              ),
            ),
          )



        /*child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              ConstrainedBox(
                  constraints: const BoxConstraints.expand(
                    height: 200,
                    width: 200
                  ),
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Constraints Box',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(
                    height: 150,
                    width: 150
                  ),
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text('Welcome \nTo Dhaka',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    for(var i = 0; i<5; i++)
                      LimitedBox(
                        maxHeight: 200,
                        child: Container(
                          color: Colors.green,
                        ),
                      )
                  ],
                ),
              )
            ],
          ),

        ),*/


      ),
    );
  }
}

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aspect Ratio Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 100,
                height: 100,
                child: AspectRatio(
                  aspectRatio: 0.5,
                  child: Container(
                    color: Colors.green,
                    height: 50,
                    width: 100,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Baseline(
                  baseline: 150,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    color: Colors.yellow,
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints.expand(
                  height: 100,
                  width: double.infinity,
                ),
                child: const Card(
                  child: Text('Hello Rubel'),
                ),
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  alignment: FractionalOffset.center,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.blue,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




