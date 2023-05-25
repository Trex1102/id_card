import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  <Widget>[
            const SizedBox(height: 40,),

             SizedBox(
              child:Image.asset(
                'assets/logo.png',
                width: 100,
                height: 100,
              ),
              ),

            const SizedBox(height: 20,),
            const Center(
              child: Text(
                'ISLAMIC UNIVERSITY OF TECHNOLOGY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30,),

            SizedBox(
              child:Image.asset(
                'assets/student.png',
                width: 50,
                height: 50,
              ),
            ),

            const SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                    Icons.key,
                    size: 18,
                ),
                SizedBox(width: 8,),
                Text(
                  'Student ID',
                  style: TextStyle(
                      fontSize: 14,
                  ),
                ),
              ], // children
            ),

            const SizedBox(height: 3,),


            Container(

              padding: const EdgeInsets.all(5.0),

              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0)
              ),


              child : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.circle,
                    size: 18,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8,),
                  Text(
                    '190041103',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ], // children
              ),

            ),

            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.person,
                  size: 18,
                ),
                SizedBox(width: 8,),
                Text(
                  'Student Name',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ], // children
            ),
            const SizedBox(height: 3,),
            const Text(
              'MD.Tanvir Hossain Saikat',
              style:  TextStyle(
                  fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.school,
                  size: 18,
                ),
                SizedBox(width: 8,),
                Text(
                  'Program BSc in CSE',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ], // children
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.radio_button_checked_rounded,
                  size: 18,
                ),
                SizedBox(width: 8,),
                Text(
                  'Department CSE',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ], // children
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.location_city,
                  size: 18,
                ),
                SizedBox(width: 8,),
                Text(
                  'Bangladesh',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ], // children
            ),

            Stack(
              children: [
                // Your main content goes here
                Container(
                  color: Colors.white, // Set the background color of your main content
                  child: const Center(
                    child: Text(
                        'A subsidiary organ of OIC',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Black layer at the bottom
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(1), // Set the desired opacity and color
                  ),
                ),
              ],
            ),

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
