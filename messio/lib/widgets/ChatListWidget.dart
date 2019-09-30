import 'package:flutter/material.dart';
import 'ChatItemWidget.dart';

class ChatListWidget extends StatelessWidget {
  final ScrollController listScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, index) => ChatItemWidget(index),
        padding: EdgeInsets.all(10.0),
        itemCount: 20,
        reverse: true,
        controller: listScrollController,
      ),
    );
  }
}
