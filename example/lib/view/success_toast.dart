import 'package:flutter/material.dart';
import 'package:super_toast/super_toast.dart';

class SuccessView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success Toast Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showSuccess(
                    context,
                    message: 'Success',
                  );
                },
                child: Text('Basic Success Message'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showSuccess(
                    context,
                    message: 'Customized Success Message',
                    borderColor: Colors.green,
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                    duration: Duration(seconds: 4),
                  );
                },
                child: Text('Customized Success Message'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showSuccess(
                    context,
                    message: 'Success',
                    suffixIcon: Icon(Icons.check, color: Colors.white,)
                  );
                },
                child: Text('Success Message with Icon'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
