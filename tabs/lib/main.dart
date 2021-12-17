import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.arrow_back_ios, color: Colors.blueGrey),
              ],
            ),
            title: Text("JEE MAINS",
                style: TextStyle(color: Colors.blueGrey[900])),
            bottom: TabBar(
              unselectedLabelColor: Colors.blueGrey,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey[900],
              ),
              tabs: [
                Tab(
                  text: "Videos",
                ),
                Tab(text: "Ebook"),
                Tab(text: "Exam"),
              ],
            ),
          ),
          body: TabBarView(children: [
            ListView(children: [
              Container(
                height: 150,
                child: Card(
                  child: ListTile(
                    title: Text("Your Content here"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ]),
            ListView(children: [
              Container(
                height: 150,
                child: Card(
                  child: ListTile(
                    title: Text("Your content here"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ]),
            ListView(children: [
              Container(
                height: 150,
                child: Card(
                  child: ListTile(
                    title: Text("Your content here"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
