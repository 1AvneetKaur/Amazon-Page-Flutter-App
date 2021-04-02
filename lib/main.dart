import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Amazon App Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,

        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.cyanAccent[700], Colors.greenAccent[200]])),
          ),
          Padding(
              padding: EdgeInsets.only(right: 35),
              child: GestureDetector(
                  onTap: () {}, child: Icon(Icons.menu, color: Colors.black))),
          Container(color: Colors.white,
            padding: EdgeInsets.only(right: 145),
            child: Image.asset('assets/photo3.jpg'),),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.search, color: Colors.black),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                  onTap: () {}, child: Icon(Icons.mic, color: Colors.black))),
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.add_shopping_cart, color: Colors.black))),
        ],
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(children: <Widget>[
                Container(
                    color: Colors.lightBlueAccent[100],
                    child: new IconButton(
                        icon: new Icon(Icons.location_on, color: Colors.black),)),

                Container(
                  color: Colors.lightBlueAccent[100],
                  //margin: EdgeInsets.only(left:150, right: 50),
                  padding: EdgeInsets.only(left: 10),
                  child: Text('\nDeliver to Avneet - New Delhi - 110001\n',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.start),
                ),
                Container(
                    color: Colors.lightBlueAccent[100],
                    child: new IconButton(
                        icon: new Icon(Icons.arrow_drop_down,
                            color: Colors.black45))),
                Container(
                    color: Colors.lightBlueAccent[100],
                  child: Text('              \n\n')
                   ),
              ]),
            ),
            Container(margin: EdgeInsets.only(top: 10, right: 70)),
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                      '  Visit the Apple Store                          ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.cyanAccent[700])),
                ),
                Icon(Icons.star, color: Colors.deepOrangeAccent),
                Icon(Icons.star, color: Colors.deepOrangeAccent),
                Icon(Icons.star, color: Colors.deepOrangeAccent),
                Icon(Icons.star, color: Colors.deepOrangeAccent),
                Icon(Icons.star_half, color: Colors.deepOrangeAccent),
                Text('3,132', style: TextStyle(color: Colors.black54))
              ],
            ),
            Container(margin: EdgeInsets.only(top: 7)),
            Text(
                '  Apple MacBook Air (13-inch, 8GB RAM, 128GB Storage,                 ',
                style: TextStyle(color: Colors.black54),
                textAlign: TextAlign.left),
            Text(
                '  1.8Hz Intel Core i5) - Silver                                                              ',
                style: TextStyle(color: Colors.black54)),

            Text(""),
            Text("  Amazon's Choice   for 'mac'\n",
                style: TextStyle(color: Colors.black)),
            Stack(children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset('assets/photo.png'),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: CircleAvatar(
                    child: Text('15% off',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                    backgroundColor: Colors.red[700]),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Icon(Icons.favorite, color: Colors.black26),
              ),
              Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(
                    Icons.share,
                    color: Colors.black26,
                  )),
            ]),

            //  Padding(
            //    padding: EdgeInsets.only(right: 15),
            //  child: GestureDetector(
            //    onTap: () {},
            //  child: Icon(Icons. , color: Colors.black))),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(text: '\n  Rs', style: TextStyle(color: Colors.black87)),
              TextSpan(
                  text: ' 65,990',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.normal))
            ])),
            RichText(
                text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: '  MRP:  ', style: TextStyle(color: Colors.black38)),
                TextSpan(
                    text: '  Rs 77,200.00',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black38)),
                TextSpan(
                    text: '  Save Rs 11,210.00',
                    style: TextStyle(
                        color: Colors.red[900], fontStyle: FontStyle.italic))
              ],
            )),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: '  EMI',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' from Rs 3,106. No Cost EMI available. ',
                  style: TextStyle(color: Colors.black87)),
              TextSpan(
                  text: 'EMI options',
                  style: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold))
            ])),
            //  Checkbox(
            //     value: isCheck,
            //   checkColor: Colors.yellowAccent,  // color of tick Mark
            // activeColor: Colors.grey,
            //onChanged: (bool value) {
            // setState(() {
            // isCheck = value;
            //});
            //}),
            Stack(
              children: <Widget>[
                Container(
                    child: Icon(Icons.check, color: Colors.deepOrangeAccent)),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: '       prime',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: '  FREE One-Day',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ])),
              ],
            ),

            Text(''),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: '  FREE delivery: ',
                  style: TextStyle(color: Colors.black87)),
              TextSpan(
                  text: 'Tomorrow',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))
            ])),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: '  Order within 6 hrs and 43 mins',
                  style: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' Details\n',
                  style: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold))
            ])),
            Container(child: Text(' ')),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Table(
                  border: TableBorder.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 1),
                  children: [
                    TableRow(children: [
                      Stack(children: <Widget>[
                        Container(
                          child: Image.asset(
                            'assets/photo2.png',
                          ),
                        ),
                        RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: '\n                 Save Extra  ',
                              style: TextStyle(
                                  color: Colors.red[700],
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: 'with 5 offers\n\n',
                              style: TextStyle(color: Colors.black87))
                        ]))
                      ]),
                    ]),
                    TableRow(children: [
                      Row(
                        children: [
                          RichText(
                              text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: '\n  No Cost EMI:',
                                style: TextStyle(
                                    color: Colors.red[700],
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' Upto Rs 2,793.49 EMI interest        \n  savings on select Credit Cards\n',
                                style: TextStyle(color: Colors.black87)),
                          ])),
                          Container(
                              child: Icon(Icons.arrow_forward,
                                  color: Colors.black45)),
                        ],
                      )
                    ]),
                  ],
                ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
