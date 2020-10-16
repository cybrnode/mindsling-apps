import 'package:flutter/material.dart';
import 'package:mindsling_student/styling.dart';

class HomeWork extends StatefulWidget {
  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppTheme.appBar,
      body: Column(
        children: <Widget>[
          Container(
            height: 30.0,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            children: [
              FittedBox(
                child: Text(
                  'Home Work',
                  style: AppTheme.title,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: <Widget>[
                    Card(
                      child: ListTile(
                        title: Text(
                          'English',
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Text('Another data');
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Math',
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Text('Another data');
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Biology',
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Text('Another data');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
