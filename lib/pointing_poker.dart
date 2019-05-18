import 'package:planning_poker/Services/networking.dart';

import 'model/pointing_poker_model.dart';

const pointingPokerAPIURL = 'https://www.pointingpoker.com/api/sessions/';

class PointingPokerData {
  Future getPointingPokerData(String sessionID) async {
    PointingPokerModel pointingPokerModel;
    var url = '${pointingPokerAPIURL + sessionID}';
    NetworkHelper networkHelper = NetworkHelper(url);
    var tickerData = await networkHelper.getData();
    pointingPokerModel = PointingPokerModel.fromJson(tickerData);

    return pointingPokerModel;
  }
}
