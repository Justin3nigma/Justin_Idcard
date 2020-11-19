import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: JustinId(),
  //home object shows what is gonna showup in our home property
  ));

class JustinId extends StatefulWidget {


  @override
  _JustinIdState createState() => _JustinIdState();
}

class _JustinIdState extends State<JustinId> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
        title: Text('Justin ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
    ),

      floatingActionButton:FloatingActionButton(
        onPressed: () {
         setState(() {
           level += 1;
         });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/justin.jpg'),
                  radius: 50.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
          color: Colors.grey[100],
                letterSpacing: 2.0,
        )
            ),
            SizedBox(height: 10.0),
            Text(
                'Justin',
                style: TextStyle(
                  color: Colors.amberAccent[100],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Text(
                'CURRENT STATUS',
                style: TextStyle(
                  color: Colors.grey[100],
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                'GOOD TO GO',
                style: TextStyle(
                    color: Colors.amberAccent[100],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color : Colors.grey[100],
                ),
                SizedBox(width: 10.0),
                Text(
                  'negna23@me.com',
                      style: TextStyle(
                color: Colors.grey[100],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                          fontWeight: FontWeight.bold
                )
                ),

              ],
            ),
            SizedBox(height: 30.0),
            Text(
                'LIKES',
                style: TextStyle(
                  color: Colors.grey[100],
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                '$level',
                style: TextStyle(
                    color: Colors.amberAccent[100],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
          ],
        )
      ),
    );
  }
}


