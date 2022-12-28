class Task {
  final int number;
  late final String date;
  late final String startTime;
  late final String endTime;
  late final String seat;
  late final String content;

  Task({
    required this.number,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.seat,
    required this.content,
  });
}

final allTasks = [];
