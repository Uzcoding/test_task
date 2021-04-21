import 'package:get/get.dart';
import 'package:test_task/models/users.dart';
import 'package:test_task/services/users_fetch.dart';

class UserListController extends GetxController {
  RxBool isLoading = false.obs;
  RxList usersList = List<Results>().obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  fetchUsers() async {
    isLoading(true);
    try {
      Users users = await UserFetch.getUsers();
      if (users != null) {
        usersList.assignAll(users.results);
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
