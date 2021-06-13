import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

final myController = TextEditingController();

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width / 10, left: 5, right: 5),
            child: Column(
              children: [
                // search
                Container(
                  child: Column(
                    children: [
                      TextField(
                        controller: myController,
                        cursorColor: Colors.red.shade800,
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.red)),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.red.shade600,
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.pink)),
                            focusColor: Colors.red.shade800,
                            hoverColor: Colors.pink.shade700,
                            fillColor: Colors.green.shade700,
                            hintText: "Enter a city name",
                            hintStyle: TextStyle(fontSize: 20),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11)))),
                      )
                    ],
                  ),
                ),
                //city and day
                Container(
                  margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: MediaQuery.of(context).size.width / 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 40),
                        alignment: Alignment.center,
                        child: Text(
                          "Dharan",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sunday, Dec 14, 2018",
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // degree and Icon(icon)
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Icon(
                          Icons.cloud,
                          size: 200,
                          color: Colors.red.shade600,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "73 F",
                              style: TextStyle(
                                  fontSize: 43, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Few Clouds",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // temp types
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 5,
                      right: MediaQuery.of(context).size.width / 5,
                      top: MediaQuery.of(context).size.width / 9,
                      bottom: MediaQuery.of(context).size.width / 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text("10.45md"),
                            Icon(
                              Icons.safety_divider,
                              color: Colors.redAccent,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text("16.45%"),
                            Icon(
                              Icons.rotate_90_degrees_ccw,
                              color: Colors.redAccent,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text("16.45%"),
                            Icon(
                              Icons.rotate_90_degrees_ccw,
                              color: Colors.redAccent,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // 7day
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width / 20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    right:
                                        MediaQuery.of(context).size.width / 20),
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 14),
                                decoration: BoxDecoration(
                                    color: Colors.red.shade400,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              35),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.cloud,
                                            size: 60,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    30),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Text(
                                                        "71 C",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Humidity",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text("Wind290",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  )),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    right:
                                        MediaQuery.of(context).size.width / 20),
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 14),
                                decoration: BoxDecoration(
                                    color: Colors.red.shade400,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              35),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.cloud,
                                            size: 60,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    30),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Text(
                                                        "71 C",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Humidity",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text("Wind290",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  )),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    right:
                                        MediaQuery.of(context).size.width / 20),
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 14),
                                decoration: BoxDecoration(
                                    color: Colors.red.shade400,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              35),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.cloud,
                                            size: 60,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    30),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Text(
                                                        "71 C",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Humidity",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text("Wind290",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  )),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    right:
                                        MediaQuery.of(context).size.width / 20),
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 14),
                                decoration: BoxDecoration(
                                    color: Colors.red.shade400,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              35),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.cloud,
                                            size: 60,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    30),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Text(
                                                        "71 C",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Humidity",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text("Wind290",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  )),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    right:
                                        MediaQuery.of(context).size.width / 20),
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 14),
                                decoration: BoxDecoration(
                                    color: Colors.red.shade400,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              35),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.cloud,
                                            size: 60,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    30),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Text(
                                                        "71 C",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Humidity",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text("Wind290",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  )),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    right:
                                        MediaQuery.of(context).size.width / 20),
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 14),
                                decoration: BoxDecoration(
                                    color: Colors.red.shade400,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              35),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.cloud,
                                            size: 60,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    30),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Text(
                                                        "71 C",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Humidity",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text("Wind290",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  )),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
