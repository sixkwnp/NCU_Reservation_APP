import 'Record.dart';

class RecordList {
  List<Record> records;

  RecordList({
    required this.records,
  });

  factory RecordList.fromJson(List<dynamic> json) {
    List<Record> records = <Record>[];
    records = json.map((i) => Record.fromJson(i)).toList();

    return RecordList(
      records: records,
    );
  }
}
