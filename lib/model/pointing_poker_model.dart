import 'package:json_annotation/json_annotation.dart';

class PointingPokerModel {
  int sessionId;
  String sessionUniqueId;
  List<Players> players;
  bool allPlayerVoted;
  String currentTime;
  String startTime;
  SessionStats sessionStats;
  List<String> turnArchive;
  String storyDescription;
  Options options;
  String lastVotesClearedTime;
  List<String> playerActivity;

  PointingPokerModel(
      {this.sessionId,
      this.sessionUniqueId,
      this.players,
      this.allPlayerVoted,
      this.currentTime,
      this.startTime,
      this.sessionStats,
      this.turnArchive,
      this.storyDescription,
      this.options,
      this.lastVotesClearedTime,
      this.playerActivity});

  PointingPokerModel.fromJson(Map<String, dynamic> json) {
    sessionId = json['SessionId'];
    sessionUniqueId = json['SessionUniqueId'];
    if (json['Players'] != null) {
      players = new List<Players>();
      json['Players'].forEach((v) {
        players.add(new Players.fromJson(v));
      });
    }
    allPlayerVoted = json['AllPlayerVoted'];
    currentTime = json['CurrentTime'];
    startTime = json['StartTime'];
    sessionStats = json['SessionStats'] != null
        ? new SessionStats.fromJson(json['SessionStats'])
        : null;
    if (json['TurnArchive'] != null) {
      turnArchive = new List<String>();
      json['TurnArchive'].forEach((v) {
        turnArchive.add("Missingdata");
      });
    }
    storyDescription = json['StoryDescription'];
    options =
        json['Options'] != null ? new Options.fromJson(json['Options']) : null;
    lastVotesClearedTime = json['LastVotesClearedTime'];
    if (json['PlayerActivity'] != null) {
      playerActivity = new List<String>();
      json['PlayerActivity'].forEach((v) {
        playerActivity.add("Null.fromJson");
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SessionId'] = this.sessionId;
    data['SessionUniqueId'] = this.sessionUniqueId;
    if (this.players != null) {
      data['Players'] = this.players.map((v) => v.toJson()).toList();
    }
    data['AllPlayerVoted'] = this.allPlayerVoted;
    data['CurrentTime'] = this.currentTime;
    data['StartTime'] = this.startTime;
    if (this.sessionStats != null) {
      data['SessionStats'] = this.sessionStats.toJson();
    }
//    if (this.turnArchive != null) {
//      data['TurnArchive'] = this.turnArchive.map((v) => v.toJson()).toList();
//    }
    data['StoryDescription'] = this.storyDescription;
    if (this.options != null) {
      data['Options'] = this.options.toJson();
    }
    data['LastVotesClearedTime'] = this.lastVotesClearedTime;
//    if (this.playerActivity != null) {
//      data['PlayerActivity'] =
//          this.playerActivity.map((v) => v.toJson()).toList();
//    }
    return data;
  }
}

class Players {
  String timeJoined;
  String lastActivity;
  String playerId;
  String name;
  String points;
  bool isObserver;

  Players(
      {this.timeJoined,
      this.lastActivity,
      this.playerId,
      this.name,
      this.points,
      this.isObserver});

  Players.fromJson(Map<String, dynamic> json) {
    timeJoined = json['TimeJoined'];
    lastActivity = json['LastActivity'];
    playerId = json['PlayerId'];
    name = json['Name'];
    points = json['Points'];
    isObserver = json['IsObserver'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TimeJoined'] = this.timeJoined;
    data['LastActivity'] = this.lastActivity;
    data['PlayerId'] = this.playerId;
    data['Name'] = this.name;
    data['Points'] = this.points;
    data['IsObserver'] = this.isObserver;
    return data;
  }
}

class SessionStats {
  int secondsElapsed;
  List<PointVotes> pointVotes;
  int averagePointValue;

  SessionStats({this.secondsElapsed, this.pointVotes, this.averagePointValue});

  SessionStats.fromJson(Map<String, dynamic> json) {
    secondsElapsed = json['SecondsElapsed'];
    if (json['PointVotes'] != null) {
      pointVotes = new List<PointVotes>();
      json['PointVotes'].forEach((v) {
        pointVotes.add(new PointVotes.fromJson(v));
      });
    }
    averagePointValue = json['AveragePointValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SecondsElapsed'] = this.secondsElapsed;
    if (this.pointVotes != null) {
      data['PointVotes'] = this.pointVotes.map((v) => v.toJson()).toList();
    }
    data['AveragePointValue'] = this.averagePointValue;
    return data;
  }
}

class PointVotes {
  String points;
  int votes;

  PointVotes({this.points, this.votes});

  PointVotes.fromJson(Map<String, dynamic> json) {
    points = json['Points'];
    votes = json['Votes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Points'] = this.points;
    data['Votes'] = this.votes;
    return data;
  }
}

class Options {
  bool showStoryDescription;
  bool showHistory;
  List<PointValues> pointValues;
  bool playerCanShowVotes;
  bool observerCanShowVotes;
  bool playerCanResetVotes;
  bool observerCanResetVotes;

  Options(
      {this.showStoryDescription,
      this.showHistory,
      this.pointValues,
      this.playerCanShowVotes,
      this.observerCanShowVotes,
      this.playerCanResetVotes,
      this.observerCanResetVotes});

  Options.fromJson(Map<String, dynamic> json) {
    showStoryDescription = json['ShowStoryDescription'];
    showHistory = json['ShowHistory'];
    if (json['PointValues'] != null) {
      pointValues = new List<PointValues>();
      json['PointValues'].forEach((v) {
        pointValues.add(new PointValues.fromJson(v));
      });
    }
    playerCanShowVotes = json['PlayerCanShowVotes'];
    observerCanShowVotes = json['ObserverCanShowVotes'];
    playerCanResetVotes = json['PlayerCanResetVotes'];
    observerCanResetVotes = json['ObserverCanResetVotes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ShowStoryDescription'] = this.showStoryDescription;
    data['ShowHistory'] = this.showHistory;
    if (this.pointValues != null) {
      data['PointValues'] = this.pointValues.map((v) => v.toJson()).toList();
    }
    data['PlayerCanShowVotes'] = this.playerCanShowVotes;
    data['ObserverCanShowVotes'] = this.observerCanShowVotes;
    data['PlayerCanResetVotes'] = this.playerCanResetVotes;
    data['ObserverCanResetVotes'] = this.observerCanResetVotes;
    return data;
  }
}

class PointValues {
  String display;
  String value;

  PointValues({this.display, this.value});

  PointValues.fromJson(Map<String, dynamic> json) {
    display = json['Display'];
    value = json['Value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Display'] = this.display;
    data['Value'] = this.value;
    return data;
  }
}
