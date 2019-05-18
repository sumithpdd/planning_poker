import 'package:flutter/material.dart';
import 'package:planning_poker/planning_poker_minicard.dart';

class CardPickerScreen extends StatefulWidget {
  CardPickerScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CardPickerPageState createState() => new _CardPickerPageState();
}

class _CardPickerPageState extends State<CardPickerScreen> {
  Widget buildGrid() {
    return new GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(10.0),
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
          new PlanningPokerMiniCard(label: "13"),
          new PlanningPokerMiniCard(label: "20"),
          new PlanningPokerMiniCard(label: "400"),
          new PlanningPokerMiniCard(label: "100"),
          new PlanningPokerMiniCard(label: "∞"),
          new PlanningPokerMiniCard(label: "?"),
          new PlanningPokerMiniCard(label: "Coffee Break"),
          new PlanningPokerMiniCard(label: "Toilet Break"),
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
