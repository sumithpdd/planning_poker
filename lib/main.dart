import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Planning Poker',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CardPickerPage(title: 'Planning Poker'),
    );
  }
}

class CardPickerPage extends StatefulWidget {
  CardPickerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CardPickerPageState createState() => new _CardPickerPageState();
}

class PlanningPokerMiniCard extends StatelessWidget {
  PlanningPokerMiniCard({key, this.label}) : super(key: key);

  final String label;

  void openCard(BuildContext context) {
    Navigator.push(context, new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
                title: new Text(label)
            ),
            body: new Center(
              child: new Text(
                  this.label,
                  style: new TextStyle(
                    fontSize: 128.0,
                    fontWeight: FontWeight.w900,
                  )
              ),
            ),
          );
        }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        openCard(context);
      },
      child: new Container(
        child: new Center(
          child: new Text(
            this.label,
            style: new TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        decoration: new BoxDecoration(
          color: Colors.grey[200],
          borderRadius: new BorderRadius.all(
            const Radius.circular(8.0),
          ),
        /*boxShadow: <BoxShadow>[
          new BoxShadow (
              color: const Color(0xcc000000),
              offset: new Offset(2.0, 2.0),
              blurRadius: 4.0,
          ),
        ],*/
        ),
      ),
    );
  }
}

class _CardPickerPageState extends State<CardPickerPage> {
  Widget buildGrid() {
    return new GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(5.0),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.75,
        children: [
          new PlanningPokerMiniCard(label: "0"),
          new PlanningPokerMiniCard(label: "1/2"),
          new PlanningPokerMiniCard(label: "1"),
          new PlanningPokerMiniCard(label: "2"),
          new PlanningPokerMiniCard(label: "3"),
          new PlanningPokerMiniCard(label: "5"),
          new PlanningPokerMiniCard(label: "8"),
          new PlanningPokerMiniCard(label: "∞"),
          new PlanningPokerMiniCard(label: "?"),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }
}
