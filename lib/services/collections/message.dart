import 'package:isar/isar.dart';

part 'message.g.dart';

@Collection()
class Message {
  Id id = Isar.autoIncrement;
  late String chat_id;
  late String timestamp;
  late String sender_id;
  late String send_timestamp;
  late String read_timestamp;
  late String message_type;
  late String content;
  late String create_at;
}
