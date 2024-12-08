import 'package:flutter/material.dart';
import 'common_layout.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> chatRooms = [
    {"name": "hello world", "lastMessage": "How are you?"},
    {"name": "헬로월드", "lastMessage": "반갑습니다."},
  ];

  void _addChatRoom() {
    setState(() {
      chatRooms.add({
        "name": "New Chat Room ${chatRooms.length + 1}",
        "lastMessage": "최근 메시지가 없습니다.",
      });
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('새로운 채팅방이 생성되었습니다!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      title: '채팅',
      child: ListView.builder(
        itemCount: chatRooms.length,
        itemBuilder: (context, index) {
          final room = chatRooms[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            title: Text(
              room["name"]!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD5E5FF),
              ),
            ),
            subtitle: Text(
              room["lastMessage"]!,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFD5E5FF).withOpacity(0.7),
              ),
            ),
            leading: CircleAvatar(
              backgroundColor: Color(0xFFFFDCA2),
              child: Icon(Icons.chat_bubble_outline, color: Color(0xFFFFD289)),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${room["name"]} 채팅방으로 이동합니다.')),
              );
            },
          );
        },
      ),
    );
  }
}
