import 'package:flutter/material.dart';
import 'package:test_task/models/users.dart';
import 'package:test_task/screens/screens.dart';

class UserCard extends StatelessWidget {
  final Results user;

  const UserCard({@required this.user});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserDetailScreen(user: user),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(user.image),
              ),
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          user.name,
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 13.0),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 10.0,
                              height: 10.0,
                              margin: const EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                color: Color(0xFF00C48C),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            Text(
                              '${user.status} - ${user.species}',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                user.gender,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
