import 'package:flutter/material.dart';
import 'package:super_toast/super_toast.dart';

class FailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fail Toast Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showFail(
                    context,
                    message: 'Fail',
                  );
                },
                child: Text('Basic Fail Message'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showFail(
                    context,
                    message: 'Customized Fail Message',
                    borderColor: Colors.red,
                    backgroundColor: Colors.red[50],
                    textColor: Colors.red,
                    duration: Duration(seconds: 2),
                  );
                },
                child: Text('Customized Fail Message'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showFail(
                    context,
                    message: 'Is Not Working',
                    prefixIcon: Icon(Icons.clear, color: Colors.white,)
                  );
                },
                child: Text('Fail Message with Prefix Icon'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
