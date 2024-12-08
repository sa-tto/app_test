import 'package:flutter/material.dart';
import 'common_layout.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      title: '알림',
      child: Center(
        child: Text(
          '알림이 없습니다.',
          style: TextStyle(fontSize: 18, color: Color(0xFFD5E5FF)),
        ),
      ),
    );
  }
}
