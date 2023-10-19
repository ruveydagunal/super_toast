import 'package:flutter/material.dart';
import 'package:super_toast/super_toast.dart';

class InfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Toast Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showInfo(
                    context,
                    message: 'This Message is Custom Flutter Toast Message',
                  );
                },
                child: Text('Basic Info Message'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showInfo(
                    context,
                    message: 'Info Message',
                    bottomPosition: MediaQuery.of(context).size.height * 0.5, 
                  );
                },
                child: Text('Center Info Message'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
