import 'package:cnn_web_ui/UI_Components/General/CurrencyRow.dart';
import 'package:cnn_web_ui/UI_Components/General/TempRow.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double screenWidth;

  const WebAppBar({Key key, this.screenWidth}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xfff6f4f0),
      elevation: 0,
      title: Text(
        'BBC News',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          backgroundColor: Colors.black
        ),
      ),
      centerTitle: true,
      leadingWidth: 200,
      leading: Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.06),
        child: TempRow(),
      ),
      actions: [
        CurrencyRow(),
        SizedBox(width: screenWidth * 0.06),
      ],
    );
  }
}
