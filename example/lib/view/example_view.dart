import 'package:example/view/fail_toast.dart';
import 'package:example/view/success_toast.dart';
import 'package:flutter/material.dart';
import 'package:super_toast/super_toast.dart';

class ExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SuccessView()));
                },
                child: Text('Success Message'),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FailView()));
                },
                child: Text('Fail Message'),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showInfo(
                    context,
                    message: 'This is an Info Message',
                    duration: Duration(seconds: 2),
                  );
                },
                child: Text('Info Message'),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showWarning(
                    context,
                    message: 'Bu bir özel toast mesajıdır.',
                    duration: Duration(seconds: 2),
                  );
                },
                child: Text('Warning Message'),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.show(
                    context,
                    message: 'Bu bir özel toast mesajıdır.',
                    duration: Duration(seconds: 2),
                  );
                },
                child: Text('Message'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
