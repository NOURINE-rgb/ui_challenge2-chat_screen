import 'package:flutter/material.dart';
import 'package:ui_challenge2/models/user.dart';
import 'package:ui_challenge2/screens/chat_screen.dart';

class ListUser extends StatelessWidget {
  const ListUser(this.user, {super.key});
  final User user;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(bottom: 12),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ChatScreen(
            user: user,
          ),
        ),
      ),
      leading: CircleAvatar(
        backgroundImage: AssetImage(user.avatar),
        radius: 25,
      ),
      title: Text(
        user.name,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      subtitle: Text(
        user.msg,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
        maxLines: 1,
      ),
      trailing: Text(
        user.time,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
