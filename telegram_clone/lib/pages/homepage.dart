import 'package:flutter/material.dart';
import 'package:telegram_clone/pages/drawer.dart';
import 'package:telegram_clone/model/user_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TelegramApp extends StatefulWidget {
  const TelegramApp({Key? key}) : super(key: key);

  @override
  State<TelegramApp> createState() => _TelegramAppState();
}

class _TelegramAppState extends State<TelegramApp> {
  final String apiUrl = 'https://reqres.in/api/users?per_page=15';
  Future<List<dynamic>> _fecthDataUser() async {
    var result = await http.get(Uri.parse(apiUrl));
    return jsonDecode(result.body)['data'];
  }

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
      body: FutureBuilder(
        future: _fecthDataUser(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (contex, index) {
                  // ChatModel chat_model = item[index];
                  return ListTile(
                    // isThreeLine: true,
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(snapshot.data[index]['avatar']),
                    ),
                    title: Text(
                     snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(snapshot.data[index]['email']),

                    // trailing: Column(
                    //   children: [
                    //     Text(item[index].time),
                    //     SizedBox(
                    //       height: 4,
                    //     ),
                    //     CircleAvatar(
                    //       backgroundColor: Colors.green,
                    //       radius: 10,
                    //       child: Text(
                    //         item[index].countChat,
                    //         style: TextStyle(fontSize: 10),
                    //       ),
                    //     )
                    //   ],
                    // ),
                  );
                },
                separatorBuilder: (contex, index) {
                  return Divider();
                },
                itemCount: snapshot.data.length);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
