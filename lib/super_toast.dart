import 'package:flutter/material.dart';

class SuperToastWidget extends StatelessWidget {
  String text;
  Color borderColor;
  SuperToastWidget({
    required this.text,
    required this.borderColor,
    super.key,
  });

    SuperToastWidget.success({
    super.key,
    required this.text,
  })  : borderColor = Colors.green;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: borderColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(13)),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,),
          ),
        ],
      ),
    );
  }

}


class CustomToast {
  static void show(
    BuildContext context,
    String message, {
    Color backgroundColor = Colors.black,
    Color textColor = Colors.white,
  }) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: textColor),
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
