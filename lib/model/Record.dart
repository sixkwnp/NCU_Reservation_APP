class Record {
  String date;
  String title;
  String content;

  Record({
    required this.date,
    required this.title,
    required this.content,
  });

  factory Record.fromJson(Map<String, dynamic> json) {
    return Record(
      date: json['date'],
      title: json['title'],
      content: json['content'],
    );
  }
}
