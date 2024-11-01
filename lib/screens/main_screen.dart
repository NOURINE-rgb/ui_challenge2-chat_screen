import 'package:flutter/material.dart';
import 'package:ui_challenge2/data/chat.dart';
import 'package:ui_challenge2/models/user.dart';
import 'package:ui_challenge2/widgets/list_user.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<User> _userList;
  late List<String> _avatarList;
  @override
  void initState() {
    super.initState();
    _userList = [];
    _avatarList = [];
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => addItems(),
    );
  }

  GlobalKey<AnimatedListState> key = GlobalKey<AnimatedListState>();
  GlobalKey<AnimatedListState> key2 = GlobalKey<AnimatedListState>();
  final _tween = Tween<double>(begin: 0, end: 1);
  final Tween<Offset> offset =
      Tween(begin: const Offset(1, 0), end: const Offset(0, 0));
  void addItems() {
    for (int i = 0; i < userList.length; i++) {
      Future.delayed(
        Duration(milliseconds: 100 * i),
        () {
          _userList.add(userList[i]);
          if (i < avatarList.length) {
            _avatarList.add(avatarList[i]);
            key2.currentState!.insertItem(i);
          }
          print("$i ************");

          key.currentState!.insertItem(i);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 5, left: 30),
            height: 220,
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TweenAnimationBuilder(
                  tween: _tween,
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'Chat with \nyour friends',
                    // textAlign: TextAlign.c,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  builder: (context, value, child) => Padding(
                      padding: EdgeInsets.only(top: value * 20),
                      child: Opacity(opacity: value, child: child)),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 60,
                  child: AnimatedList(
                    key: key2,
                    scrollDirection: Axis.horizontal,
                    initialItemCount: _avatarList.length,
                    itemBuilder: (context, i, animation) => SlideTransition(
                      position: animation.drive(offset),
                      child: Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(avatarList[i]),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
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
            child: AnimatedList(
              key: key,
              initialItemCount: _userList.length,
              itemBuilder: (context, index, animation) => SlideTransition(
                position: animation.drive(offset),
                child: ListUser(_userList[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
