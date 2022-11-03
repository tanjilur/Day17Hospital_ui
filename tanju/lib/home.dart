import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tanju/view/secondtask.dart';
import 'package:tanju/view/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ],
          elevation: 0,
        ),
        body: Column(children: [
          Text(
            "HospiTal Info",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(flex: 5, child: FirstPage()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Most Popular"),
              Text("Another"),
            ],
          ),
          Expanded(flex: 3, child: SecondTask())
        ]),
      ),
    );
  }
}
