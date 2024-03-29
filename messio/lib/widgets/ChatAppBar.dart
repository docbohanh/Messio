import 'package:flutter/material.dart';
import 'package:messio/config/Assets.dart';
import 'package:messio/config/Palette.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100.0;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {

    var textHeading = TextStyle(color: Colors.black, fontSize: 20);
    var textStyle = TextStyle(color: Palette.secondaryColor);

    double width = MediaQuery.of(context).size.width;

    var attachWidget = Expanded(
      flex: 2,
      child: Center(
        child: Icon(Icons.attach_file, color: Palette.secondaryColor),
      ),
    );

    var senderWidget = Expanded(
      flex: 6,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Aditya Gurjar', style: textHeading),
            Text('adityagurjar', style: textStyle)
          ],
        ),
      ),
    );

    var mediaWidget = Container(
      height: 23,
      padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Photos', style: textStyle),
          VerticalDivider(width: 30, color: Palette.primaryTextColor),
          Text('Videos', style: textStyle),
          VerticalDivider(width: 30, color: Palette.primaryTextColor),
          Text('File', style: textStyle)
        ],
      ),
    );

    var avatarWidget = Expanded(
      flex: 3,
      child: Container(
        child: Center(
          child: CircleAvatar(
            backgroundImage: Image.asset(Assets.user).image,
            radius: (80 - width * 0.06) / 2,
          ),
        ),
      ),
    );

    return Material(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 5.0)
          ]
        ),
        child: Container(
          color: Palette.primaryBackgroundColor,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 70 - width * .06,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            attachWidget,
                            senderWidget
                          ],
                        ),
                      ),
                      mediaWidget

                    ],
                  ),
                ),
              ),
              avatarWidget
            ],
          ),
        ),
      ),
    );
  }
}