import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MeetingDetails extends StatefulWidget {
  @override
  _MeetingDetailsState createState() => _MeetingDetailsState();
}

class _MeetingDetailsState extends State<MeetingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Image.asset(
          'assets/mind-01_3.png',
          fit: BoxFit.fill,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Live Sessions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text('Parent Teaching Meeting'),
                                    Spacer(),
                                    Text(
                                      '23-07-2020',
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'You received a video lecture from teacher',
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Requested Time : Today at 6pm',
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Requested by : Alex John',
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Requested Time : Norma Alex',
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ButtonTheme(
                                      minWidth: 280.0,
                                      height: 47.0,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                        onPressed: () {},
                                        color: Colors.teal[400],
                                        child: Text(
                                          'Start Now',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
