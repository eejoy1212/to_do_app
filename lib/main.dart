import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_zzang_to_do_list/controller/to_do_ctrl.dart';
import 'package:one_zzang_to_do_list/model/to_do_model.dart';
import 'package:one_zzang_to_do_list/view/to_do_view.dart';

void main() {
  Get.put(TodoCtrl());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'one_zzang_to_do_list',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('to do list'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ToDoListView(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      List<String> tempList = [
                        'to do 0',
                        'to do 1',
                        'to do 2',
                        'to do 3',
                        'to do 4',
                        'to do 5',
                        'to do 6',
                        'to do 7',
                        'to do 8',
                        'to do 9',
                        'to do 10',
                        'to do 11'
                      ];

                      tempList.forEach((name) {
                        TodoCtrl.to.td
                            .add(ToDo(toDoName: name, isChecked: false.obs));
                      });
                    },
                    child: Text('+'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      TodoCtrl.to.td.clear();
                    },
                    child: Text('-'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
