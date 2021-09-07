import 'package:flutter/material.dart';
import 'package:flutter_challange_animated_list_view/sliver_list.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF121212),
        canvasColor: Color(0xFF272727),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate your list!',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body:Container(
        margin: EdgeInsets.only(bottom: 50),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(40, 40),
                side: BorderSide(color:Colors.white),
                backgroundColor: Theme.of(context).canvasColor,
              ),
              child: Text("Start",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white70),
                ),
                onPressed:() => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SliverListScreen(),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}