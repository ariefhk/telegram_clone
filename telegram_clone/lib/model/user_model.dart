class ChatModel {
  final String name;
  final String message;
  final String time;
  final String profileUrl;
  final String countChat;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.profileUrl,
      required this.countChat});
}

var item = [
  ChatModel(
      name: 'Alexa',
      message: 'Hallo Arief ',
      time: '12.00',
      profileUrl: 'assets/images/alexa.jpg',
      countChat: '10'),
  ChatModel(
      name: 'Alex',
      message: 'What\'s Up?',
      time: '10.00',
      profileUrl: 'assets/images/alex.jpg',
      countChat: '5'),
  ChatModel(
      name: 'Diana',
      message: 'Do you free today?',
      time: '08.00',
      profileUrl: 'assets/images/diana.jpg',
      countChat: '30'),
  ChatModel(
      name: 'Lia',
      message: 'Please help me :D',
      time: '13.00',
      profileUrl: 'assets/images/lia.jpg',
      countChat: '12')
];
