import 'package:flutter/material.dart';
import 'package:pet_app/presentation/screens/chat_screen.dart';
import 'package:pet_app/presentation/theme/all_theme.dart';
import 'package:pet_app/data/models/person.dart';

class ChatListScreen extends StatefulWidget {
  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  var chatList = [
    Person('Clinic', 'https://cutt.ly/xc4ELVY'),
    Person('Shelter', 'https://cutt.ly/Lc4E2xb'),
    Person('Dr.Ali', 'https://cutt.ly/6c4EO8L'),
    Person('Dr.Khaled', 'https://cutt.ly/6c4EO8L'),
    Person('Pet Store', 'https://cutt.ly/sc4EG3b'),
    Person('Dr.Esraa', 'https://cutt.ly/6c4EO8L'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: chatListWidget(),
    );
  }

  Widget chatListWidget() {
    return ListView(
      padding: EdgeInsets.only(top: 15),
      children: <Widget>[getChatWidgetList()],
    );
  }

  Widget getChatWidgetList() {
    return Column(
        children: chatList.map((x) {
      return _chatTile(x);
    }).toList());
  }

  Widget _chatTile(model) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 10,
            color: LightColor.grey.withOpacity(.2),
          ),
          BoxShadow(
            offset: Offset(-3, 0),
            blurRadius: 15,
            color: LightColor.grey.withOpacity(.1),
          )
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(
                model.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(model.name, style: TextStyles.title.bold),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: 30,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ).ripple(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatPage()));
      }, borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
