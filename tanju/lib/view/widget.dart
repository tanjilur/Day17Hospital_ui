import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tanju/model/model.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final flist = Hospital.hospital_list();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: flist.length,
          itemBuilder: (context, index) {
            var fhospital = flist[index];

            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    fhospital.img,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fhospital.name,
                        style: TextStyle(color: Colors.amber, fontSize: 20),
                      ),
                      Text(
                        fhospital.address,
                        style: TextStyle(color: Colors.amber, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
