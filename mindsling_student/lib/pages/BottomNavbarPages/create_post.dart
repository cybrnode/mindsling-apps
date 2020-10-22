import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text(
              "Create Post",
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            actions: <Widget>[
              FlatButton(
                textColor: Colors.teal[400],
                onPressed: () {},
                child: Text(
                  "Post",
                  style: TextStyle(
                    fontFamily: 'Poppins-bold',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                shape: CircleBorder(
                  side: BorderSide(color: Colors.transparent),
                ),
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            Container(
              height: SizeConfig.heightMultiplier * 10,
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //   // borderRadius: BorderRadius.circular(3),
                  // ),
                  contentPadding: const EdgeInsets.all(20.0),
                  hintText: "What's on your mind?",
                  hintStyle: TextStyle(
                    fontSize: 18.0,
                    color: const Color(0xffa9b9c5),
                  ),
                ),
              ),
            ),
            Container(
              height: 254, // width: MediaQuery.of(context).size.width,
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //   // borderRadius: BorderRadius.circular(3),
                  // ),
                  contentPadding: const EdgeInsets.all(20.0),
                  hintText: 'Description',
                  hintStyle: TextStyle(
                    fontSize: 18.0,
                    color: const Color(0xffa9b9c5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5 * SizeConfig.heightMultiplier),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              // backgroundImage:
                              //     AssetImage('assets/classes-02.png'),
                              // backgroundColor: Colors.white,
                              child: Icon(
                                FontAwesomeIcons.portrait,
                                color: Colors.teal,
                              ),
                              backgroundColor: Colors.teal[100],
                            ),
                            // backgroundColor: Colors.teal[100],
                          ],
                        ),
                        FittedBox(child: Text("Upload Picture")),
                      ],
                    ),
                    width: 114.0,
                    height: 114.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1.0),
                          offset: Offset(0, 3),
                          blurRadius: 9,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Flexible(
                  flex: 4,
                  child: Container(
                    child: Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                // backgroundImage:
                                //     AssetImage('assets/classes-02.png'),
                                // backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.video,
                                  color: Colors.teal,
                                ),
                                backgroundColor: Colors.teal[100],
                              ),
                              // backgroundColor: Colors.teal[100],
                            ],
                          ),
                          FittedBox(child: Text("Upload Video")),
                        ],
                      ),
                    ),
                    width: 114.0,
                    height: 114.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1.0),
                          offset: Offset(0, 3),
                          blurRadius: 9,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
