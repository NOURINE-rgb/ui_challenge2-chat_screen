import 'package:ui_challenge2/models/user.dart';

const avatarList = [
  'assets/images/avatar-0.png',
  'assets/images/avatar-1.png',
  'assets/images/avatar-2.png',
  'assets/images/avatar-3.png',
  'assets/images/avatar-4.png',
  'assets/images/avatar-5.png',
];

const userList = [
  User(
      avatar: 'assets/images/avatar-1.png',
      name: 'Justin O\'Moore',
      msg: 'Hey there! whats up? Is everything fine ',
      time: '18:35'),
  User(
      avatar: 'assets/images/avatar-2.png',
      name: 'Batman',
      msg: 'Hey there! whats up? Is everything fine ',
      time: '18:36'),
  User(
      avatar: 'assets/images/avatar-3.png',
      name: 'Zack',
      msg: 'Hey there! whats up? Is everything fine ',
      time: '18:37'),
  User(
      avatar: 'assets/images/avatar-4.png',
      name: 'Akrem',
      msg: 'Hey there! whats up? Is everything fine ',
      time: '18:38'),
  User(
      avatar: 'assets/images/avatar-5.png',
      name: 'nicklaws',
      msg: 'Hey there! whats up? Is everything fine ',
      time: '18:39'),
  User(
      avatar: 'assets/images/avatar-1.png',
      name: 'Elaijah',
      msg: 'Hey there! whats up? Is everything fine ',
      time: '18:40'),
  User(
      avatar: 'assets/images/avatar-2.png',
      name: 'Rebecka',
      msg: 'Hey there! whats up? Is everything fine ',
      time: '18:41'),
];

final List<Map<String,String>> messages = [
  {
    'from': 'sender',
    'message': 'hi',
    'time': '18:35',
  },
  {
    'from': 'receiver',
    'message': 'hello',
    'time': '18:36',
  },
  {
    'from': 'sender',
    'message': 'whats up! where are you?',
    'time': '18:37',
  },
  {
    'from': 'receiver',
    'message': 'Fine. I am in Banaglore',
    'time': '18:38',
  },
  {
    'from': 'sender',
    'message': 'How is your life going man',
    'time': '18:39',
  },
  {
    'from': 'receiver',
    'message':
        'Going well. I am planning to move in mumbai. let see what happen',
    'time': '18:40',
  },
  {
    'from': 'sender',
    'message': 'Thats great',
    'time': '18:41',
  },
  {
    'from': 'receiver',
    'message': 'Hmmm',
    'time': '18:42',
  },
  {
    'from': 'sender',
    'message': 'ok',
    'time': '18:43',
  },
  {
    'from': 'receiver',
    'message': 'bye',
    'time': '18:44',
  },
];
