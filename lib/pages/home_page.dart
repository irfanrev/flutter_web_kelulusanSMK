import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[800],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Kelulusan SMKN 1 Sagaranten'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_rounded),
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 250,
                        width: 200,
                        color: Colors.grey,
                        child: Image.asset(
                          'asep.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                        left: 50,
                      )),
                      Text('Asep Romdon'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 250,
                    width: 200,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
