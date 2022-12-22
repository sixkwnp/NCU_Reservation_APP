// ignore_for_file: camel_case_types, file_names, unnecessary_this

import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/model/Record.dart';
import 'package:ncu_reservation_app/model/RecordList.dart';
import 'package:ncu_reservation_app/model/RecordService.dart';

class boardPage extends StatefulWidget {
  const boardPage({Key? key}) : super(key: key);

  @override
  _boardPageState createState() => _boardPageState();
}

class _boardPageState extends State<boardPage> {
  final RecordList _records = RecordList(records: []);
  final RecordList _filteredRecords = RecordList(records: []);

  @override
  void initState() {
    super.initState();
    _getRecords();
  }

  void _getRecords() async {
    RecordList records = await RecordService().loadRecords();
    setState(() {
      for (Record record in records.records) {
        _records.records.add(record);
        _filteredRecords.records.add(record);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 223, 234, 233),
        ),
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            const Text(
              "布告欄",
              style: TextStyle(
                height: 3,
                fontSize: 48,
                fontFamily: 'ChenYuluoyan-Thin',
              ),
            ),
            Expanded(
              child: _buildList(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0.0),
      physics: const BouncingScrollPhysics(),
      children: this
          ._filteredRecords
          .records
          .map((data) => _buildListItem(context, data))
          .toList(),
    );
  }

  Widget _buildListItem(BuildContext context, Record record) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      color: const Color.fromARGB(255, 223, 234, 233),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 217, 217, 217),
          borderRadius: BorderRadius.all(Radius.circular(28.0)),
        ),
        child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            title: Text(
              record.title,
            ),
            subtitle: Text(
              record.content,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text(record.date),
            onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(
                      record.title,
                    ),
                    content: SingleChildScrollView(
                      child: Text(record.content),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
