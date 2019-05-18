import 'package:flutter/material.dart';

class PlanningPokerMiniCard extends StatelessWidget {
  PlanningPokerMiniCard({key, this.label}) : super(key: key);

  final String label;

  void openCard(BuildContext context) {
    Navigator.push(context,
        new MaterialPageRoute<Null>(builder: (BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(title: new Text(label)),
        body: new Center(
          child: new Text(this.label,
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 128.0,
                fontWeight: FontWeight.w900,
              )),
        ),
      );
    }));
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
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        decoration: new BoxDecoration(
          color: Colors.grey[200],
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(1.0),
            topRight: const Radius.circular(1.0),
            bottomLeft: const Radius.circular(4.0),
            bottomRight: const Radius.circular(8.0),
          ),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: const Color(0xcc000000),
              offset: new Offset(2.0, 2.0),
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
    );
  }
}
