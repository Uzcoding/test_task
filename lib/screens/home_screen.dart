import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/controllers/user_list_controller.dart';
import 'package:test_task/models/users.dart';
import 'package:test_task/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final UserListController usersController = Get.put(UserListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'Rick and Morty',
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () {
          if (usersController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (usersController.usersList == null) {
            return Center(
              child: Text('Users Empty'),
            );
          }
          return Container(
            child: ListView.separated(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              physics: BouncingScrollPhysics(),
              itemCount: usersController.usersList.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 10.0),
              itemBuilder: (context, index) {
                Results user = usersController.usersList[index];
                return UserCard(
                  user: user,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
