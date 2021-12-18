import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());
String Url =
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202112/students_exams_pti_7_0_1200x76_2_1200x768.jpeg?2FMYvWcIOHWZ0WWzFq5wlZnzGTlacwc_&size=770:433";

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
            //Videos
            ListView(children: [
              SizedBox(
                height: 150,
                child: Card(
                  child: Row(children: [
                    SizedBox(
                      width: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(Url)),
                      ),
                    ),
                  ]),
                  elevation: 8,
                  shadowColor: Colors.blueGrey,
                  margin: const EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white)),
                ),
              ),
            ]),
            //Ebook
            ListView(children: [
              SizedBox(
                height: 150,
                child: Card(
                  child: Row(children: [
                    SizedBox(
                      width: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(Url),
                        ),
                      ),
                    ),
                  ]),
                  elevation: 8,
                  shadowColor: Colors.blueGrey,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ]),
            //Exam
            ListView(children: [
              SizedBox(
                height: 150,
                child: Card(
                  child: Row(children: [
                    SizedBox(
                      width: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(Url)),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Title"),
                        Text("DESCRIPTON"),
                      ],
                    ),
                  ]),
                  elevation: 8,
                  shadowColor: Colors.blueGrey,
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
