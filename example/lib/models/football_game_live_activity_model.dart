import 'package:live_activities/models/live_activity_image.dart';

class FootballGameLiveActivityModel {
  final String? orderStatus;
  final LiveActivityImageFromAsset? orderStatusImage;
  final String? deliveryTime;

  final DateTime? matchStartDate;
  final DateTime? matchEndDate;
  final String? matchName;

  final String? teamAName;
  final String? teamAState;
  final String? teamAScore;

  final String? teamBName;
  final String? teamBState;
  final int? teamBScore;
  final LiveActivityImageFromAsset? teamBLogo;

  FootballGameLiveActivityModel({
    required this.orderStatus,
    required this.deliveryTime,
    this.teamAName,
    this.matchName,
    this.teamAState,
    this.teamAScore = '0',
    this.teamBScore = 0,
    this.orderStatusImage,
    this.teamBName,
    this.teamBState,
    this.teamBLogo,
    this.matchEndDate,
    this.matchStartDate,
  });

  Map<String, dynamic> toMap() {
    final map = {
      'orderStatus': orderStatus,
      'orderStatusImage': orderStatusImage,
      'deliveryTime': deliveryTime,
      'matchName': matchName,
      'teamAName': teamAName,
      'teamAState': teamAState,
      'teamAScore': teamAScore,
      'teamBScore': teamBScore,
      'teamBName': teamBName,
      'teamBState': teamBState,
      'teamBLogo': teamBLogo,
      'matchStartDate': matchStartDate?.millisecondsSinceEpoch,
      'matchEndDate': matchEndDate?.millisecondsSinceEpoch,
    };

    return map;
  }

  FootballGameLiveActivityModel copyWith({
    LiveActivityImageFromAsset? orderStatusImage,
    String? orderStatus,
    String? deliveryTime,
    DateTime? matchStartDate,
    DateTime? matchEndDate,
    String? matchName,
    String? teamAName,
    String? teamAState,
    String? teamAScore,
    String? teamBName,
    String? teamBState,
    int? teamBScore,
    LiveActivityImageFromAsset? teamBLogo,
  }) {
    return FootballGameLiveActivityModel(
      orderStatus: orderStatus ?? this.orderStatus,
      orderStatusImage: orderStatusImage ?? this.orderStatusImage,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      matchStartDate: matchStartDate ?? this.matchStartDate,
      matchEndDate: matchEndDate ?? this.matchEndDate,
      matchName: matchName ?? this.matchName,
      teamAName: teamAName ?? this.teamAName,
      teamAState: teamAState ?? this.teamAState,
      teamAScore: teamAScore ?? this.teamAScore,
      teamBName: teamBName ?? this.teamBName,
      teamBState: teamBState ?? this.teamBState,
      teamBScore: teamBScore ?? this.teamBScore,
      teamBLogo: teamBLogo ?? this.teamBLogo,
    );
  }
}
