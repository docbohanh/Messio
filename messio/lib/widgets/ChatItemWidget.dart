import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:intl/intl.dart';

class ChatItemWidget extends StatelessWidget {
  var index;

  ChatItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    var evenRow = Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Text('This is a sent message',
                    style: TextStyle(color: Palette.selfMessageColor)),
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                width: 200.0,
                decoration: BoxDecoration(
                  color: Palette.selfMessageBackgroundColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                margin: EdgeInsets.only(right: 10.0),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Text(
                    DateFormat('dd MMM kk:mm').format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                  style: TextStyle(
                    color: Palette.greyColor,
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
                margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
              )
            ],
          )

        ],
      ),
    );

    var oddRow = Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Text('This is recieved message', style: TextStyle(color: Palette.otherMessageColor)),
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                width: 200,
                decoration: BoxDecoration(
                  color: Palette.otherMessageBackgroundColor,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                margin: EdgeInsets.only(left: 10.0),
              ),

              Container(
                child: Text(
                  DateFormat('dd MMM kk:mm').format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                  style: TextStyle(color: Palette.greyColor, fontSize: 12.0, fontStyle: FontStyle.normal),
                ),
                margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
              )
            ],
          )
        ],
      ),
    );

    if (index % 2 == 0) {
      return evenRow;
    } else {
      return oddRow;
    }
  }
}
