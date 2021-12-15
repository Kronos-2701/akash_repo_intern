import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String User = "Priya";
  int score = 80;
  int minutes = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey[900],
                borderRadius: const BorderRadius.only(
                    bottomLeft: const Radius.circular(10),
                    bottomRight: const Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(children: [
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text("Test Result",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 28,
                        )),
                  ]),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 25,
                    ),
                    child: Text("GK Quix - 433 (English)",
                        style: GoogleFonts.lato(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      bottom: 8,
                    ),
                    child: Text("Overall Report",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 28)),
                  )
                ],
              ),
            ),
          ),
          //second widget
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 20,
              right: 15,
            ),
            child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ],
                    color: Colors.white70,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10))),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Performance : Learn !",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 23)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Learn the topic in key focus areas and try again . We know you can do better ! ",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 15)),
                    ],
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          //Third widget
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: const BorderRadius.only(
                      topLeft: const Radius.circular(10),
                      topRight: const Radius.circular(10),
                      bottomLeft: const Radius.circular(10),
                      bottomRight: const Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey $User, ",
                        style: GoogleFonts.lato(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    Text("Keep it up ! ",
                        style: GoogleFonts.lato(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Your Score",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    Text("$score/100",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 19,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 14, bottom: 14, left: 8, right: 8),
                      child: Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                      ),
                    ),
                    //timer
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.access_time_filled_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text("     Time",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          const Spacer(),
                          Text("$minutes:00 mins  /  40:00 mins",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none))
                        ],
                      ),
                    ),

                    //Attempts
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text("     Attempt",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          const Spacer(),
                          Text("90 / 100",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none))
                        ],
                      ),
                    ),
                    //Rank
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.bar_chart_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text("     Rank",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          const Spacer(),
                          Text("200/1800",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none))
                        ],
                      ),
                    ),
                    //Accuracy
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.adjust_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text("    Accuracy",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          const Spacer(),
                          Text("80%",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none))
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    //Total Correct
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Total Correct     ",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          const Spacer(),
                          LinearPercentIndicator(
                            width: 160.0,
                            lineHeight: 13.0,
                            percent: 0.8,
                            backgroundColor: Colors.white,
                            progressColor: Colors.yellow[700],
                          ),
                          const Spacer(),
                          Text("80%",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none))
                        ],
                      ),
                    ),

                    //Total Incorrect
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Total Incorrect",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          const Spacer(),
                          LinearPercentIndicator(
                            width: 160.0,
                            lineHeight: 13.0,
                            percent: 0.1,
                            backgroundColor: Colors.white,
                            progressColor: Colors.red,
                          ),
                          const Spacer(),
                          Text("10%",
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none))
                        ],
                      ),
                    ),
                    //Not Attempted
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Not Attempted",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          const Spacer(),
                          LinearPercentIndicator(
                            width: 160.0,
                            lineHeight: 13.0,
                            percent: 0.1,
                            backgroundColor: Colors.white,
                            progressColor: Colors.purple[400],
                          ),
                          const Spacer(),
                          Text("10%",
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),

          //Solutions button
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Check Solutions",
                    textAlign: TextAlign.center,
                  )),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueGrey[900])),
            ),
          )
        ],
      ),
    );
  }
}
