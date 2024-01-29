import 'package:flutter/material.dart';

import '../animation/align_animation.dart';

class GestureScreen extends StatefulWidget {
  const GestureScreen({super.key});

  @override
  State<GestureScreen> createState() => _GestureScreenState();
}

class _GestureScreenState extends State<GestureScreen> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //print('Gesture Detector is working');
      },
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text('Engage'),
                ElevatedButton(
                    onPressed: () {
                      _increment();
                    },
                    child: const Text('Increment')),
                const SizedBox(
                  height: 8,
                ),
                Text('Increment $_counter'),
                const SizedBox(
                  height: 10,
                ),
               /*Card(
                  margin: const EdgeInsets.all(8.0),
                  child: MergeSemantics(
                    child: Row(
                      children: [
                        Expanded(
                          child: Checkbox(
                              value: true, onChanged: (bool? value) {}),
                        ),
                        const Text('Setting'),
                        Expanded(
                            child: Checkbox(
                                value: true, onChanged: (bool? value) {})),
                        const Text('Home'),
                        Expanded(
                            child: Checkbox(
                                value: true, onChanged: (bool? value) {})),
                        const Text('Home'),
                        Expanded(
                            child: Checkbox(
                                value: true, onChanged: (bool? value) {})),
                        const Text('Home'),
                        Expanded(
                            child: Checkbox(
                                value: true, onChanged: (bool? value) {})),
                        const Text('Home'),
                      ],
                    ),
                  ),
                ),*/
               /* Card(
                  elevation: 5,

                  child: MergeSemantics(
                    child: Row(

                      children: [
                        Checkbox(value: true, onChanged: (bool? value){
                          
                        }),
                        const Text('Dhaka')
                      ],
                    ),
                    
                  ),
                )*/
                Semantics(

                  excludeSemantics: true,
                  enabled: true,
                  checked: true,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.5,
                    width: MediaQuery.of(context).size.width*0.5,
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    color: Colors.yellow,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AlignAnimationScreen()));
                    }, child: const Icon(Icons.navigate_next)),
                  ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
