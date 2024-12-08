import 'package:flutter/material.dart';
import 'common_layout.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      title: '지도',
      child: Center(
        child: Text(
          '지도가 여기에 표시됩니다.',
          style: TextStyle(fontSize: 18, color: Color(0xFFD5E5FF)),
        ),
      ),
    );
  }
}
