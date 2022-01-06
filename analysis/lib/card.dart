import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class MycardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.white,
        body: MyCardWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyCardWidget extends StatelessWidget {
  MyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 370,
          height: 270,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                          'JEE : Chemistry-29 Nov',
                          style: TextStyle(fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.bold)
                      ),
                      Spacer(),
                      Icon(Icons.calendar_today_outlined),
                      SizedBox(width:5),

                      Text("29 Nov"), SizedBox(width:24),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only( left: 8,right: 8),
                child: Row(
                  children: [
                    Text(
                          '30 mins',
                          style: TextStyle(fontSize: 18.0 , color:Colors.blue ,fontWeight: FontWeight.bold )
                      ),
                    Spacer(),
                    Icon(Icons.timelapse),
                    SizedBox(width:5),
                    Text("01:48 mins")
                  ],
                ),
              ),
              ],
            ),
          ),
        )
    );
  }
}