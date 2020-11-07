import 'package:flutter/material.dart';
import 'package:scorecount/pages/scorecount.dart';
import 'package:scorecount/themes/theme.dart';

class NameTeam extends StatefulWidget {
  const NameTeam({Key key}) : super(key: key);
  @override
  _NameTeamState createState() => _NameTeamState();
}

class _NameTeamState extends State<NameTeam> {
  // String teamName;
  var teamName1 = new TextEditingController();
  var teamName2 = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.kAppbarColor,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'SCORE COUNT',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 80,
              ),
              TextField(
                controller: teamName1,
                decoration: InputDecoration(
                  labelText: 'Team 1',
                  hintText: 'Input your team name',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
              ),
              TextField(
                controller: teamName2,
                decoration: InputDecoration(
                  labelText: 'Team 2',
                  hintText: 'Input your team name',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        onPressed: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new ScoreCount(
                              value1: teamName1.text,
                              value2: teamName2.text,
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'START',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: MyColors.kAppbarColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
