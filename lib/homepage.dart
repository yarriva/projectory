import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  final String email;
  //HomePage(this.email);
  HomePage({Key key, @required this.email}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String apiUrl = "https://api.github.com/users";
  List items;
  var isLoading = true;

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  Future getData() async {
    var response = await http.get(
      Uri.encodeFull(apiUrl),
    );
    setState(() {
      var jsonData = json.decode(
        response.body,
      );
      items = jsonData;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Colors.black12,
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  width: 200.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.short_text),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.home,
                            color: Colors.red,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Home',
                          style: TextStyle(
                            fontFamily: 'arial',
                            fontSize: 10.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'About',
                          style: TextStyle(
                            fontFamily: 'arial',
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Settings',
                          style: TextStyle(
                            fontFamily: 'arial',
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.power_settings_new,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Logout',
                          style: TextStyle(
                            fontFamily: 'arial',
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.event_note,
                                    color: Colors.red,
                                    size: 25.0,
                                  ),
                                  onPressed: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Text(
                                'Projectory',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 22.0,
                                  fontFamily: 'arial',
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 19, 30, 0),
                              child: Text(
                                widget.email,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  fontFamily: 'arial',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black12,
                        thickness: 1.0,
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 18, 15, 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 44, 0, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'My Projects',
                                                style: TextStyle(
                                                  fontFamily: 'arial',
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 47, 0, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'New Project',
                                                style: TextStyle(
                                                  fontFamily: 'arial',
                                                  fontSize: 17.0,
                                                  color: Colors.cyan[300],
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 47, 20, 0),
                                            child: Icon(
                                              Icons.add_circle_outline,
                                              color: Colors.cyan[300],
                                              size: 25.0,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                3, 20, 3, 20),
                                            child: SizedBox(
                                              height: 400,
                                              child: isLoading
                                                  ? SizedBox(
                                                      height: 50.0,
                                                      width: 50.0,
                                                      child: CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation(
                                                                  Colors.redAccent),
                                                          strokeWidth: 5.0),
                                                    )
                                                  : ListView.builder(
                                                      itemCount: items.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        var isCheck = true;
                                                        return Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          elevation: 0,
                                                          color: Colors.black26,
                                                          child:
                                                              CheckboxListTile(
                                                            value: isCheck,
                                                            onChanged:
                                                                (newValue) {
                                                              setState(() {
                                                                isCheck =
                                                                    newValue;
                                                              });
                                                            },
                                                            activeColor:
                                                                Colors.black26,
                                                            title: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      0,
                                                                      20,
                                                                      0,
                                                                      20),
                                                              child: Text(
                                                                '${items[index]['login']}',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                  color: Colors
                                                                      .white60,
                                                                  fontSize:
                                                                      15.0,
                                                                  fontFamily:
                                                                      'arial',
                                                                ),
                                                              ),
                                                            ),
                                                            secondary: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      0,
                                                                      3,
                                                                      0,
                                                                      0),
                                                              child: Text(
                                                                '${items[index]['id']}.${items[index]['id']}.20${items[index]['id']}',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                  color: Colors
                                                                      .white38,
                                                                  fontSize:
                                                                      10.0,
                                                                  fontFamily:
                                                                      'arial',
                                                                ),
                                                              ),
                                                            ),
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .leading,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                            ),
                                          )
                                        ],
                                      )

                                      // ListView.builder(
                                      //   itemCount: items.length,
                                      //   itemBuilder: (context, index) {

                                      //       return Text('data');

                                      //     //return ListTile(
                                      //       //title: Text('${items[index]}'),
                                      //     //);
                                      //   },
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 18, 30, 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 44, 0, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'Project Name',
                                                style: TextStyle(
                                                  fontFamily: 'arial',
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 47, 0, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'New Task',
                                                style: TextStyle(
                                                  fontFamily: 'arial',
                                                  fontSize: 17.0,
                                                  color: Colors.cyan[300],
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 47, 20, 0),
                                            child: Icon(
                                              Icons.add_circle_outline,
                                              color: Colors.cyan[300],
                                              size: 25.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
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
    );
  }

  Future<http.Response> fetchPost() {
    return http.get('https://jsonplaceholder.typicode.com/posts/1');
  }
}
