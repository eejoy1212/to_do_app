import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_zzang_to_do_list/controller/to_do_ctrl.dart';
import 'package:one_zzang_to_do_list/model/to_do_model.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key, required this.tdModel}) : super(key: key);
  final ToDo tdModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(tdModel.toDoName),
        Obx(() {
          return Checkbox(
              value: tdModel.isChecked.value,
              onChanged: (val) {
                if (val != null) {
                  tdModel.isChecked.value = val;
                  debugPrint(
                      '${tdModel.toDoName}의 isChecked ${tdModel.isChecked.value}');
                }
              });
        })
      ],
    );
  }
}

class ToDoListView extends StatelessWidget {
  const ToDoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        child: Obx(() {
          return Scrollbar(
            isAlwaysShown: true,
            child: ListView.builder(
              itemCount: TodoCtrl.to.td.length,
              itemBuilder: (BuildContext context, int index) {
                return TodoListWidget(tdModel: TodoCtrl.to.td[index]);
              },
            ),
          );
        }));
  }
}
