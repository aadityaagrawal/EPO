import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class section_card extends StatelessWidget {
  final String title;
  final Color section_color;

  section_card({
    super.key,
    required this.image_path,
    required this.title,
    required this.section_color,
  });

  final List<String> image_path;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          tileColor: section_color,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        Container(
          color: section_color,
          height: 550,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: CustomBuilder(image_path: image_path[index]));
              // index < 3
              // ? Padding(
              //     padding: const EdgeInsets.only(right: 16),
              //     child: CustomBuilder(image_path: image_path[index]))
              //     : IconButton(
              //         onPressed: () {},
              //         icon: const Icon(Icons.arrow_forward_ios_rounded));
            },
          ),
        )
      ],
    );
  }
}

class CustomBuilder extends StatelessWidget {
  const CustomBuilder({
    super.key,
    required this.image_path,
  });

  final String image_path;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          image_path,
          width: MediaQuery.of(context).size.width * 0.88,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.88,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "Project EXPO \n4th April 2023",
              ),
              Icon(Icons.people_outline),
              Text("Tantrotsav"),
              Icon(Icons.arrow_forward_ios_outlined)
            ],
          ),
        )
      ],
    );
  }
}
