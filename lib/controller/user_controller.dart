import 'package:get/get.dart';
import 'package:getxexample/models/user.dart';

class UserController extends GetxController {
  final user = User().obs;
  updateUser(int count) {
    user.update((val) {
      val?.name = "Shafiqul Islam";
      val?.count = count;
    });
  }
}
