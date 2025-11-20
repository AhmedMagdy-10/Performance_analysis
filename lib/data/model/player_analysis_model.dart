// models/player_analysis.dart
class PlayerAnalysis {
  final String playerId;
  final String matchId;
  final DateTime matchDate;
  final List<MatchEvent> events;
  final PerformanceMetrics metrics;
  final List<VideoHighlight> highlights;

  PlayerAnalysis({
    required this.playerId,
    required this.matchId,
    required this.matchDate,
    required this.events,
    required this.metrics,
    required this.highlights,
  });
}

class MatchEvent {
  final int minute;
  final EventType type;
  final String description;
  final bool isCorrectDecision;
  final Position position;
  final String? recommendedAction;
  final String? videoTimestamp;

  MatchEvent({
    required this.minute,
    required this.type,
    required this.description,
    required this.isCorrectDecision,
    required this.position,
    this.recommendedAction,
    this.videoTimestamp,
  });
}

enum EventType { PASS, SHOT, TACKLE, INTERCEPTION, POSITIONING, DECISION }

class PerformanceMetrics {
  final int goals;
  final int assists;
  final double distanceCovered;
  final double passAccuracy;
  final int successfulTackles;
  final int incorrectDecisions;
  final int correctDecisions;

  PerformanceMetrics({
    required this.goals,
    required this.assists,
    required this.distanceCovered,
    required this.passAccuracy,
    required this.successfulTackles,
    required this.incorrectDecisions,
    required this.correctDecisions,
  });

  double get decisionAccuracy =>
      correctDecisions / (correctDecisions + incorrectDecisions);
}
