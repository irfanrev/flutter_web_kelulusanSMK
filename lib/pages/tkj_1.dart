import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tkj1 extends StatefulWidget {
  const Tkj1({Key? key}) : super(key: key);

  @override
  _Tkj1State createState() => _Tkj1State();
}

class _Tkj1State extends State<Tkj1> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('tkj_1');
    return Scaffold(
      backgroundColor: Colors.green[700],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('12 TKJ 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
        child: StreamBuilder<QuerySnapshot>(
          stream: users.snapshots(),
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (_, index) {
                  DocumentSnapshot data = snapshot.data!.docs[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 60),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          child: Image.network(
                            data['f'],
                            height: 300,
                            width: 200,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          data['n'],

                          ///name
                          style: GoogleFonts.poppins(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
