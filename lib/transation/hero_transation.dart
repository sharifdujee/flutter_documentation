import 'package:flutter/material.dart';
import 'package:flutter_documentation/image/raw_image.dart';
class HeroTransationApp extends StatefulWidget {
  const HeroTransationApp({super.key});

  @override
  State<HeroTransationApp> createState() => _HeroTransationAppState();
}

class _HeroTransationAppState extends State<HeroTransationApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeroTransitionExample(),
    );
  }
}
class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key, required this.size,  required this.color});
  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.blue,
    );
  }
}

class HeroTransitionExample extends StatefulWidget {
  const HeroTransitionExample({super.key});

  @override
  State<HeroTransitionExample> createState() => _HeroTransitionExampleState();
}

class _HeroTransitionExampleState extends State<HeroTransitionExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Transition'),
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: Hero(
              tag: 'hero-default-tween',
              child: BoxWidget(
                size: const Size(50.0, 50.0),
                color: Colors.red[700]!.withOpacity(0.5),
              ),
            ),
            title: const Text(
              'This red icon will use a default rect tween during the hero flight.',
            ),
          ),
          const SizedBox(height: 10.0),
          ListTile(
            leading: Hero(
              tag: 'hero-custom-tween',
              createRectTween: (Rect? begin, Rect? end) {
                return MaterialRectCenterArcTween(begin: begin, end: end);
              },
              child: BoxWidget(
                size: const Size(50.0, 50.0),
                color: Colors.blue[700]!.withOpacity(0.5),
              ),
            ),
            title: const Text(
              'This blue icon will use a custom rect tween during the hero flight.',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _goToDetailsPage(context),
            child: const Text('Tap to trigger hero flight'),
          ),

        ],
      ),
    );
  }

  void _goToDetailsPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: const Text('Second Page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'hero-rectangle',
                  child: BoxWidget(size: Size(200, 200), color: Colors.indigo,),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RawImageScreen()),
                    );
                  },
                  icon: const Icon(Icons.raw_off),
                  label: const Text("Image Page"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}


