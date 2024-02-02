import 'package:flutter/material.dart';
import 'package:flutter_documentation/transation/hero_transation.dart';

class FadeTransationExampleApp extends StatelessWidget {
  const FadeTransationExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FadeTransationExample(),
    );
  }
}

class FadeTransationExample extends StatefulWidget {
  const FadeTransationExample({super.key});

  @override
  State<FadeTransationExample> createState() => _FadeTransationExampleState();
}

class _FadeTransationExampleState extends State<FadeTransationExample>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation =
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut);
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColoredBox(
          color: Colors.white,
          child: FadeTransition(
            opacity: _animation,
            child: const Padding(
              padding: EdgeInsets.only(left: 20, right: 10, bottom: 30),
              child: FlutterLogo(
                size: 85,
              ),
            ),
          ),


        ),
        ElevatedButton.icon(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HeroTransationApp()));
        }, icon: const Icon(Icons.next_plan_sharp), label: const Text('Hero'))
      ],
    );
  }
}
