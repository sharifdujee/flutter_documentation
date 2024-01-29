import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedContainer].

class AnimatedContainerExampleApp extends StatelessWidget {
  const AnimatedContainerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Animated'),
          centerTitle: true,
          elevation: 0,
        ),
        body: const AnimatedContainerExample(),
      ),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool selected = false;
  final bool _first = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Column(
          children: [
            Center(
              child: AnimatedContainer(
                width: selected ? 200 : 100,
                height: selected ? 200 : 100,
                alignment: selected ? Alignment.center : Alignment.bottomRight,
                color: selected ? Colors.green : Colors.red,
                curve: Curves.bounceInOut,
                duration: const Duration(seconds: 5),
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Ok');
              },
              icon: const Icon(Icons.navigation),
              label: const Text('Next Page '),
            ),
            AnimatedCrossFade(
              firstCurve: Curves.linearToEaseOut,
                secondCurve: Curves.bounceOut,
                firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal,),
                secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked,), crossFadeState: _first?CrossFadeState.showFirst: CrossFadeState.showSecond, duration: const Duration(seconds: 5),

            ),
            const AnimatedDefaultTextStyle(style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
            ), duration: Duration(seconds: 5),
                child: Text('Welcome Rahat'))
          ],
        ));
  }
}
