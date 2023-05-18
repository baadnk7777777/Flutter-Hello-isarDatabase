import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello_isar/services/collections/message.dart';
import 'package:hello_isar/services/collections/user.dart';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding();
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [UserSchema, MessageSchema],
    directory: dir.path,
  );
  runApp(MyApp(
    isar: isar,
  ));
}

class MyApp extends StatelessWidget {
  final Isar isar;
  const MyApp({super.key, required this.isar});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(
        isar: isar,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  final Isar isar;
  MainPage({super.key, required this.isar});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<void> createUser() async {
    final newUser = User()
      ..name = 'John Doe2'
      ..age = 42;
    await widget.isar.writeTxn(() async {
      await widget.isar.users.put(newUser);
    });
  }

  Future<void> createMessage() async {
    final message = Message()
      ..chat_id = '120'
      ..timestamp = '2023-04-26T09:28:53.000Z'
      ..sender_id = '2'
      ..send_timestamp = '2023-04-26T09:28:53.000Z'
      ..read_timestamp = 'null'
      ..message_type = 'sticker'
      ..content = '1-12'
      ..create_at = '2023-04-26T09:29:31.346Z';
    await widget.isar.writeTxn(() async {
      await widget.isar.messages.put(message);
    });
  }

  Future<void> findUser() async {
    final existingUser = await widget.isar.users.get(2); // get
    print(existingUser?.name.toString());
  }

  Future<void> deleteuUser() async {
    await widget.isar.writeTxn(() async {
      await widget.isar.users.delete(1);
    });
  }

  Future<void> fetchMessages() async {
    var url;
    List<Map> syncMessage = [];
    url = Uri.parse(
        'https://chat-cloud-api-hjlnxvghea-as.a.run.app/sync/users/message/2/0');

    http.Response response = await http.get(url);

    var urjon = jsonDecode(response.body);

    print(urjon);
    for (var jsondata in urjon) {
      syncMessage.add(jsondata);
    }

    for (var i = 0; i < syncMessage.length; i++) {
      final message = Message()
        ..chat_id = syncMessage[i]['chat_id'].toString()
        ..timestamp = syncMessage[i]['timestamp'].toString()
        ..sender_id = syncMessage[i]['sender_id'].toString()
        ..send_timestamp = syncMessage[i]['send_timestamp'].toString()
        ..read_timestamp = syncMessage[i]['read_timestamp'].toString()
        ..message_type = syncMessage[i]['message_type'].toString()
        ..content = syncMessage[i]['content'].toString()
        ..create_at = syncMessage[i]['create_at'].toString();

      await widget.isar.writeTxn(() async {
        await widget.isar.messages.put(message);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchMessages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routine'),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             CreateRoutine(isar: widget.isar)));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  createUser();
                },
                child: const Text("Add User")),
            TextButton(
                onPressed: () {
                  createMessage();
                },
                child: const Text("Add Message")),
            TextButton(
                onPressed: () {
                  findUser();
                },
                child: const Text("Read User")),
            TextButton(
                onPressed: () {
                  deleteuUser();
                },
                child: const Text("Delete User"))
          ],
        ),
      ),
    );
  }
}
