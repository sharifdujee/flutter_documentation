import 'package:flutter/material.dart';
import 'package:flutter_documentation/animation/animation_builder.dart';
import 'package:flutter_documentation/cv/simple_cv.dart';
import 'package:flutter_documentation/layout/multi_child_layout.dart';

class AlignAnimationScreen extends StatefulWidget {
  const AlignAnimationScreen({super.key});

  @override
  State<AlignAnimationScreen> createState() => _AlignAnimationScreenState();
}

class _AlignAnimationScreenState extends State<AlignAnimationScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(

                  width: 100,
                  height: MediaQuery.of(context).size.height*0.85,
                  color: Colors.red,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AnimatedAlign(
                          alignment: isSelected ? Alignment.topLeft : Alignment.bottomRight,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.fastOutSlowIn,
                          heightFactor: 10,
                          widthFactor: 15,
                          child: const FlutterLogo(size: 80,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20), // Add some space between the container and the button
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AnimatedBuilderExampleApp()));
                  // Handle button press here
                },
                child: const  Text('Toggle Alignment'),
              ),
            ),
          ],
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CvScreen()));
              // Handle button press here
            },
            child: const  Text('CV'),
          ),
        ),
        const SizedBox(height: 5,),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MultiChildLayoutScreen()));
              // Handle button press here
            },
            child: const  Text('Multi Child'),
          ),
        ),
      ],
    );
  }
}
