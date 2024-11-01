import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {required this.image,
      required this.from,
      required this.msg,
      required this.time,
      super.key});
  final String image;
  final String from;
  final String msg;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          from == "sender" ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (from == "sender")
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(image),
          ),
        if (from != "sender")
          Text(
            time,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          // width: 200,
          constraints: const BoxConstraints(maxWidth: 240, minHeight: 34),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomRight: from == "sender"
                  ? const Radius.circular(12)
                  : const Radius.circular(0),
              bottomLeft: from != "sender"
                  ? const Radius.circular(12)
                  : const Radius.circular(0),
            ),
            color: from == "sender"
                ? Theme.of(context).primaryColor
                : Colors.grey.shade300,
          ),
          child: Text(
            msg,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: from == "sender" ? Colors.white : Colors.black,
                ),
          ),
        ),
        if (from == "sender")
          Text(
            time,
            style: Theme.of(context).textTheme.labelLarge,
          ),
      ],
    );
  }
}
