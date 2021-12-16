import 'package:custom_dialog_flutter_demo/custom_dialog_box.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SpeedLaßs"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        CustomDialogBox(
                          title: "Start Test",
                          descriptions:
                              "I have read and understood the instructions.All computer hardware allotted to me are in proper working condition . I agree that in case of not adhering to the instructions, I will be disqualified from giving the exam.",
                          text: "Yes, I agree",
                        ),
                      ],
                    );
                  });
            },
            child: Text("Start Test"),
          ),
        ),
      ),
    );
  }
}
