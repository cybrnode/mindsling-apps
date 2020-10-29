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
      resizeToAvoidBottomInset: true,
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: ListView(
              // reverse: true,
              shrinkWrap: true,
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 10,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.top,
                    expands: true,
                    maxLines: null,
                    autofocus: true,
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
                    autofocus: true,
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
              ],
            ),
          ),
          SizedBox(height: 5 * SizeConfig.heightMultiplier),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                              'assets/icons/Icon metro-file-picture.png'),
                        ),

                        // backgroundColor: Colors.teal[100],
                      ],
                    ),
                    FittedBox(child: Text("Upload Picture")),
                  ],
                ),
                width: 40.0 * SizeConfig.widthMultiplier,
                height: 20.0 * SizeConfig.heightMultiplier,
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
              Spacer(),
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
                            backgroundColor: Colors.white,
                            child: Image.asset(
                                'assets/icons/Icon feather-video.png'),
                          ),
                        ],
                      ),
                      FittedBox(child: Text("Upload Video")),
                    ],
                  ),
                  width: 40.0 * SizeConfig.widthMultiplier,
                  height: 20.0 * SizeConfig.heightMultiplier,
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
          SizedBox(
            height: 5 * SizeConfig.heightMultiplier,
          )
        ],
      ),
    );
  }
}
