import 'package:get/get.dart';
import 'package:one_zzang_to_do_list/model/to_do_model.dart';

class TodoCtrl extends GetxController {
  static TodoCtrl get to => Get.find();
  RxList<ToDo> td = RxList.empty();
}
