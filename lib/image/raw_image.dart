import 'package:flutter/material.dart';
import 'package:flutter_documentation/card/card_view.dart';
import 'package:flutter_documentation/layout/single_layout.dart';
import 'package:flutter_documentation/table/horizontal_data_table.dart';
class RawImageScreen extends StatefulWidget {
  const RawImageScreen({super.key});

  @override
  State<RawImageScreen> createState() => _RawImageScreenState();
}

class _RawImageScreenState extends State<RawImageScreen> {
  get user => user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.8,
              decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://scontent.fdac20-1.fna.fbcdn.net/v/t39.30808-6/294122525_1190342328464491_4938450741591355601_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a73e89&_nc_ohc=_T29M3g3G1YAX8vsvqa&_nc_ht=scontent.fdac20-1.fna&oh=00_AfDnxuMK-xQ7OMYQXJUBjtasPUAS-R3OawNAPe1NqVCGAQ&oe=65C143DC')
                  ,
                  fit: BoxFit.fitWidth,

                )
              ),
             child:  const FlutterLogo(
               duration:  Duration(seconds: 10),
               size: 500,
               curve: Curves.bounceInOut,
               textColor: Colors.yellow,

             ),
            ),
            ElevatedButton.icon(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CardViewScreen()));
            }, icon: const Icon(Icons.card_membership), label: const Text('Card')),
            ElevatedButton.icon(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>    const SingleLayoutScreen()));
            }, icon: const  Icon(Icons.directions_railway), label: const Text('Layout')),
          ],
        ),



      ),
    );
  }
}
