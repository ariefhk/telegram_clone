import 'package:flutter/material.dart';
import 'package:telegram_clone/pages/drawer.dart';
import 'package:telegram_clone/model/user_model.dart';

class TelegramApp extends StatefulWidget {
  const TelegramApp({Key? key}) : super(key: key);

  @override
  State<TelegramApp> createState() => _TelegramAppState();
}

class _TelegramAppState extends State<TelegramApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerPage(),
    
      body: ListView.separated(
          itemBuilder: (contex, index) {
            ChatModel chat_model = item[index];
            return ListTile(
              // isThreeLine: true,
              leading: CircleAvatar(
                backgroundImage: AssetImage(item[index].profileUrl),
              ),
              title: Text(
                item[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(item[index].message),
  
              trailing: Column(
                children: [
                  Text(item[index].time),
                  SizedBox(height: 4,),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Text(item[index].countChat, style: TextStyle(fontSize: 10),),
                  )
                  
                ],
              ),
            );
          },
          separatorBuilder: (contex, index) {
            return Divider();
          },
          itemCount: item.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
