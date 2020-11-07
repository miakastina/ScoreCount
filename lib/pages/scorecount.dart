import 'package:flutter/material.dart';
import 'package:scorecount/themes/theme.dart';

class ScoreCount extends StatefulWidget {
  final String value1;
  final String value2;
  const ScoreCount({Key key, this.value1, this.value2}) : super(key: key);
  @override
  _ScoreCountState createState() => _ScoreCountState();
}

class _ScoreCountState extends State<ScoreCount> {
  int count1 = 0;
  int count2 = 0;

  void plus1() {
    setState(() {
      count1++;
    });
  }

  void minus1() {
    setState(() {
      if (count1 != 0) count1--;
    });
  }

  void plus2() {
    setState(() {
      count2++;
    });
  }

  void minus2() {
    setState(() {
      if (count2 != 0) count2--;
    });
  }

  void reset() {
    setState(() {
      count1 = 0;
      count2 = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.kAppbarColor,
        title: Text('Score Count'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: MyColors.kBoxNameTeam1,
                    padding: EdgeInsets.all(35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 41,
                        ),
                        Text(
                          "${widget.value1}",
                          style: TextStyle(
                            fontSize: 35,
                            color: MyColors.kGroupNameTeam1,
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        Container(
                          width: 500,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: MyColors.kGroupNameTeam1,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              new BoxShadow(
                                color: MyColors.kBoxNameTeam2,
                                offset: new Offset(10.0, 10.0),
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              '$count1',
                              style: TextStyle(
                                  fontSize: 80.0,
                                  color: MyColors.kGroupNameTeam1),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                        ),
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: plus1,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          height: 15,
                        ),
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: minus1,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: MyColors.kBoxNameTeam2,
                    padding: EdgeInsets.all(35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 41,
                        ),
                        Text(
                          "${widget.value2}",
                          style: TextStyle(
                            fontSize: 35,
                            color: MyColors.kGroupNameTeam1,
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        Container(
                          width: 500,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: MyColors.kGroupNameTeam1,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              new BoxShadow(
                                color: MyColors.kBoxNameTeam1,
                                offset: new Offset(10.0, 10.0),
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              '$count2',
                              style: TextStyle(
                                  fontSize: 80.0,
                                  color: MyColors.kGroupNameTeam1),
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 50,
                        ),
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: plus2,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: minus2,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                gradient: LinearGradient(
                  colors: [
                    MyColors.kAppbarColor,
                    MyColors.kBoxNameTeam1,
                    MyColors.kBoxNameTeam2,
                    MyColors.kAppbarColor,
                  ],
                ),
              ),
              child: Center(
                child: SizedBox(
                  width: 250,
                  height: 50,
                  child: RaisedButton(
                    color: MyColors.kAppbarColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: reset,
                    child: Text(
                      'RESET',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
