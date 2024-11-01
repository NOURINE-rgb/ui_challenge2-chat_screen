import 'package:flutter/material.dart';
import 'package:ui_challenge2/data/chat.dart';
import 'package:ui_challenge2/models/user.dart';
import 'package:ui_challenge2/widgets/chat_bubble.dart';
import 'package:ui_challenge2/widgets/mytext_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({required this.user, super.key});
  final User user;
  String twoLine(String text) {
    String newText = "";
    for (int i = 0; i < text.length; i++) {
      if (text[i] == " ") {
        newText += ' \n';
      } else {
        newText += text[i];
      }
    }
    return newText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 40,
              left: 10,
              right: 10,
            ),
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Back",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white.withOpacity(0.6),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Search",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white.withOpacity(0.6),
                            ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                          user.name.contains(" ")
                              ? twoLine(user.name)
                              : user.name,
                          style: Theme.of(context).textTheme.titleLarge),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          minimumSize: const Size(40, 40),
                          backgroundColor: Colors.white38,
                        ),
                        child: const Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          minimumSize: const Size(40, 40),
                          backgroundColor: Colors.white38,
                        ),
                        child: const Icon(
                          Icons.video_call,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            height: MediaQuery.of(context).size.height - 220,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) => ChatBubble(
                      image: user.avatar,
                      from: messages[index]["from"]!,
                      msg: messages[index]["message"]!,
                      time: messages[index]["time"]!,
                    ),
                  ),
                ),
                const MytextField(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
