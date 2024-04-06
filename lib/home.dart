import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white, border: Border.all(width: 2)),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        height: 80, width: double.infinity),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Compare Price"),
                        style: ElevatedButton.styleFrom(
                          elevation: 25,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black, width: 2),
                          shape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                        )),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        height: 80, width: double.infinity),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Rate Stores"),
                        style: ElevatedButton.styleFrom(
                          elevation: 25,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black, width: 2),
                          shape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
