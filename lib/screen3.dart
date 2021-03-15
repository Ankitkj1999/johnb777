import 'package:flutter/material.dart';
import 'package:johnb777/constants.dart';
import 'package:johnb777/screen1.dart';
import 'package:johnb777/screen2.dart';

class Screen3 extends StatefulWidget {
  static String id = 'screen3';
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:40.0, left: 10, right: 10, bottom: 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        elevation: 2,
                        margin: EdgeInsets.only(top: 5),
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                          child: Container(
                            height: 90,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('images/icon2.png',
                                        height: 44,
                                      ),
                                      Text(''),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:3.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('\$0.00'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        margin: EdgeInsets.only(top: 5),
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                          child: Container(
                            height: 90,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('images/icon2.png',
                                        height: 44,
                                      ),
                                      Text(''),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:3.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('\$0.00'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        margin: EdgeInsets.only(top: 5),
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                          child: Container(
                            height: 90,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('images/icon2.png',
                                        height: 44,
                                      ),
                                      Text(''),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:3.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('\$0.00'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        margin: EdgeInsets.only(top: 5),
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                          child: Container(
                            height: 90,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('images/icon2.png',
                                        height: 44,
                                      ),
                                      Text(''),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:3.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('\$0.00'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        margin: EdgeInsets.only(top: 5),
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                          child: Container(
                            height: 90,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('images/icon2.png',
                                        height: 44,
                                      ),
                                      Text(''),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:3.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('\$0.00'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        margin: EdgeInsets.only(top: 5),
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                          child: Container(
                            height: 90,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('images/icon2.png',
                                        height: 44,
                                      ),
                                      Text(''),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:3.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                            Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(''),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('\$0.00'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                      ),
                    ),
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.only(top:10.0, bottom: 7, left:20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex:0,
                                child: PopupMenuButton(
                                  onSelected: choiceAction,
                                  itemBuilder: (BuildContext context) {
                                    return Constants.choices.map((String choice) {
                                      return PopupMenuItem<String>(
                                        value: choice,
                                        child: Text(choice),
                                      );
                                    }).toList();
                                  },
                                  child: Icon(Icons.dehaze,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(child: Text('Receipts Previous Shipments', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
  void choiceAction(String choice) {
    if (choice == Constants.printlabel) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Screen1();
      }));
    }
    if (choice == Constants.lockermapntracking) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Screen2();
      }));
    }
  }
}
