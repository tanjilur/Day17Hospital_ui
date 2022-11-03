import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tanju/model/model.dart';

class SecondTask extends StatefulWidget {
  const SecondTask({Key? key}) : super(key: key);

  @override
  State<SecondTask> createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask> {
  final secondpart = Hospital.more_hospital();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.share,
              ),
              label: "Share"),
        ],
      ),
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var secondimages = secondpart[index];

            return Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    secondimages.img,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      secondimages.name,
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                    Text(
                      secondimages.address,
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                  ],
                )
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount: secondpart.length),
    );
  }
}
