import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/model/Task.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ncu_reservation_app/page/addReservation.dart';

enum Actions { delete }

class reservationPage extends StatefulWidget {
  const reservationPage({Key? key}) : super(key: key);

  @override
  State<reservationPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<reservationPage> {
  List<Task>? tasks = allTasks.cast<Task>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 234, 233),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "預約時段",
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'ChenYuluoyan-Thin',
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => addReservation(),
                    ),
                  );
                },
                splashRadius: 20,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: SlidableAutoCloseBehavior(
              closeWhenOpened: true,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: tasks?.length,
                itemBuilder: ((context, index) {
                  final task = tasks![index];
                  return Slidable(
                    key: Key(task.number.toString()),
                    endActionPane: ActionPane(
                      dismissible: DismissiblePane(
                        onDismissed: (() =>
                            _onDismissed(index, Actions.delete)),
                      ),
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          backgroundColor: Colors.red,
                          icon: Icons.delete,
                          label: 'delete',
                          onPressed: ((context) =>
                              _onDismissed(index, Actions.delete)),
                        )
                      ],
                    ),
                    child: buildTaskListTile(task),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onDismissed(int index, Actions action) {
    final task = tasks![index];
    setState(() => tasks?.removeAt(index));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '預約 ${task.date} 的 ${task.seat} 座位已被刪除',
          style: const TextStyle(
            fontSize: 24,
            fontFamily: 'ChenYuluoyan-Thin',
          ),
        ),
      ),
    );
  }

  Widget buildTaskListTile(Task task) => Builder(
        builder: (content) => ListTile(
          contentPadding: const EdgeInsets.all(16),
          title: Text(
            '${task.date} ${task.startTime} - ${task.endTime} \n 已預約 ${task.seat} 的位置',
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'ChenYuluoyan-Thin',
            ),
          ),
          leading: const Icon(Icons.calendar_month),
          onTap: () {
            final slidable = Slidable.of(context);
            final isClosed =
                slidable?.actionPaneType.value == ActionPaneType.none;
            if (isClosed) {
              slidable?.close();
            } else {
              slidable?.close();
            }
          },
        ),
      );
}
