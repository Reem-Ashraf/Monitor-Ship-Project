class TrackStatusModel {
  final bool isCompleted;
  final bool isLast;
  final String statusText;
  final String dateText;

  TrackStatusModel({
    required this.isCompleted,
    required this.isLast,
    required this.statusText,
    required this.dateText,
  });
}
