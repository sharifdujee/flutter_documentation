import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footer/footer.dart';
class CvScreen extends StatefulWidget {
  const CvScreen({super.key});

  @override
  State<CvScreen> createState() => _CvScreenState();
}

class _CvScreenState extends State<CvScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title:  const Text('Md Sharif Hossain'),
        centerTitle: true,

      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(12.0),
          children: const <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://scontent.fdac20-1.fna.fbcdn.net/v/t1.6435-9/178017351_904964833668910_7923390925272569569_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=3a23d8&_nc_ohc=BlOt01A0JqkAX_ZSEFk&_nc_ht=scontent.fdac20-1.fna&oh=00_AfCcvxyGlSX8cmHuSe38igdSk_IloM2vDjnMCowOorzbIw&oe=65EF0294'),
              ),
                accountName: Text('Md Sharif Hossain'), 
                accountEmail: Text('Sharifdu44@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.cast_for_education),
              title: Text('University'),
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Business'),

            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*0.9,
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://scontent.fdac20-1.fna.fbcdn.net/v/t39.30808-6/331060674_746491733776998_2741900403512154956_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=aETwD-RwodoAX_Xnj24&_nc_ht=scontent.fdac20-1.fna&oh=00_AfDctgsizF3iQ5T0rQfEyD1AxjJ0Tx3hIZjZN5ScygnhtQ&oe=65CA57A7',


            ),
              fit: BoxFit.fill,
              opacity: 0.75,
            )
          ),
          child: ListView(
            children: [
              _address(),
              const SizedBox(height: 20,),
              _profilePicture(),
              const SizedBox(height: 20,),
              _personalDetails(),
              const SizedBox(height: 20,),
              _educationalBackground(),
              const SizedBox(height: 20,),
              _footer(),
              const SizedBox(height: 20,),
              _bottomNavigation(),

            ],
          ),



        ),
      ),


    );
  }
  Widget _personalDetails(){
    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.all(18.0),

        child: Column(
          children: [
            Text('Personal Details',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),

            Row(
              children: <Widget>[
                Expanded(child: Text('Name:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                ),
                Expanded(child: Text('Md Sharif Hossain')),
                Expanded(child: Text('DOB:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                ),
                Expanded(child: Text('08-11-1998')),
              ],
            ),
            Row(
              children: <Widget>[

              ],
            )
          ],
        ),


      ),
    );
  }
  Widget _educationalBackground() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 30),
              child: Text('Educational Qualification',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
            ),
            DataTable(
              columnSpacing: 20, // Adjust as needed
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Level Of Education'),
                ),
                DataColumn(
                  label: Text('Result'),
                ),
                DataColumn(
                  label: Text('Name of Institute'),
                ),
                DataColumn(
                  label: Text('Passing Year'),
                ),
              ],
              rows: const <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                        'MS',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  DataCell(
                    Text(
                      '3.76',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),

                  ),
                  DataCell(
                    Text(
                      'University of Dhaka',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  DataCell(
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        '2021',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ]
                ),
                DataRow(cells: <DataCell>[
                  DataCell(
                    Text(
                      'BS',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  DataCell(
                    Text(
                      '3.20',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),

                  ),
                  DataCell(
                    Text(
                      'University of Dhaka',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '2020',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ]
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _profilePicture(){
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.2,
      child:  Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(75),

          child: const Image(image: NetworkImage('https://scontent.fdac20-1.fna.fbcdn.net/v/t39.30808-6/225308149_961369354695124_4995842829922711199_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=SyqpH1g5q28AX-wCtR0&_nc_ht=scontent.fdac20-1.fna&oh=00_AfD1ESf3KU0ywOQl3OfNaFs4cy4TQPXcW2YqfwDHln5mBw&oe=65CB39B5',

          ),
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
      ),

    );
  }
  Widget _address(){
    return const SizedBox(
      child: Padding(padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 120, top: 10, right: 40),
              child: Text('Address',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),),
            ),

            Row(
              children: [
                Expanded(child: Text('364/6/A/1, South Monipur , Mirpur -2, Dhaka 1216'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 2,
                  child: Icon(Icons.email,
                size: 50,),),

                Flexible(
                  flex: 2,
                    child: Text('Sharifdu44@gmail.com')),
                Flexible(
                  flex: 2,
                  child: Icon(FontAwesomeIcons.github,
                    size: 50,),),

                Flexible(
                    flex: 2,
                    child: Text('Sharifdu44@gmail.com'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 2,
                  child: Icon(FontAwesomeIcons.linkedinIn,
                    size: 50,),),

                Flexible(
                    flex: 2,
                    child: Text('Sharifdu44@gmail.com'))
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _footer(){
    return Footer(backgroundColor: Colors.grey.shade300,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.bottomCenter,
      child: const Column(
        children: [
          Row(
            children: [
              Icon(Icons.copyright),
              Expanded(child: Text('Developer: Md Sharif Hossain')),
              Icon(Icons.join_full),
              Expanded(child: Text('Junior Software Engineer ')),
            ],
          ),
          Row(
            children: [

            ],
          ),
          Row(
            children: [
              Icon(Icons.compass_calibration),
              Text('Circle Technology Limited'),
            ],
          ),
          Row(
            children: [
              Icon(FontAwesomeIcons.github),
              Text('Circle Technology Limited'),
            ],
          ),
          Row(
            children: [
              Icon(FontAwesomeIcons.linkedinIn),
              Text('Circle Technology Limited'),
            ],
          ),
          Row(
            children: [
              Icon(FontAwesomeIcons.facebook),
              Text('Circle Technology Limited'),
            ],
          ),
        ],
      ),);
  }
  Widget _bottomNavigation() {
    int selectedIndex = 0;
    const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    const List<Widget> widgetOptions = <Widget>[
      Text('Index 0 Home', style: optionStyle),
      Text('Index 1 Business', style: optionStyle),
      Text('Index 2 School', style: optionStyle)
    ];

    void onItemTaped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      items:   <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.indigo[100],


            icon: const Icon(Icons.home), label: 'Home'),
        const BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
        const BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTaped,
    );
  }



}
