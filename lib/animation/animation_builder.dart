import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_documentation/animation/container_animation.dart';

/// Flutter code sample for [AnimatedBuilder].


class AnimatedBuilderExampleApp extends StatelessWidget {
  const AnimatedBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedBuilderExample(
      ),
    );
  }
}
class AnimatedBuilderExample extends StatefulWidget{
  const AnimatedBuilderExample({super.key});
  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuildExampleState();

}




/// AnimationControllers can be created with `vsync: this` because of
/// TickerProviderStateMixin.
///
class _AnimatedBuildExampleState extends State<AnimatedBuilderExample> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 15),
      vsync: this,

  )..repeat();
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return AnimatedBuilder(animation: _controller,
        child: Container(
          width: 100,
          height: 50,
          color: Colors.green[400],
          child:  Column(
            children: [
              const Center(
                child: Text('Welcome'),
              ),
              ElevatedButton.icon(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const AnimatedContainerExampleApp()));
              }, icon: const Icon(Icons.navigate_next), label: const Text('Animated Container'))
            ],
          ),
        ),
        builder: (BuildContext context, Widget? child){
      return Transform.rotate(angle: _controller.value * 2.0 * math.pi,
      child: child,);
        });
  }

}



