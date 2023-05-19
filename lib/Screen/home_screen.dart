import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import './screen.dart';
import '../Config/config.dart';
import '../Widget/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var items = ["Upcoming", "Ongoing", "Past"];
  List<String> image_path = [
    "assets/image/Poster-1.png",
    "assets/image/Poster-2.png",
    "assets/image/Poster.png"
  ];
  String dropDownValue = "Upcoming";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 58,
                        child: ListTile(
                          shape: const Border(
                            right: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          title: Text(
                            "EPO",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bungee(
                                fontSize: 38,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 58,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                      child: DropdownButton(
                          alignment: Alignment.center,
                          iconSize: 24,
                          borderRadius: BorderRadius.circular(10),
                          enableFeedback: true,
                          underline: Container(),
                          // dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                          icon: const Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.black,
                          ),
                          elevation: 0,
                          value: dropDownValue,
                          items: items
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              dropDownValue = value!;
                            });
                          },
                          style: Theme.of(context).textTheme.displayMedium),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          height: 58,
                          child: ListTile(
                            horizontalTitleGap: 0,
                            leading: Icon(
                              Icons.location_pin,
                            ),
                            title: Text(
                              "SRM Institute of Science and Technology",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(
                          height: 60,
                          child: Icon(Icons.person_2_rounded)),
                    )
                  ],
                ),
                section_card(
                  image_path: image_path,
                  title: "Hackathon",
                  section_color: const Color(0XFFF5D2D3),
                ),
                section_card(
                  image_path: image_path,
                  title: "Cultural Events",
                  section_color: const Color(0XFFBDD0C4),
                ),
                section_card(
                  image_path: image_path,
                  title: "Webinars/Semiars",
                  section_color: const Color(0XFF9AB7D3),
                ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
