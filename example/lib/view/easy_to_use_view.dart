import 'package:flutter/material.dart';
import 'package:super_toast/super_toast.dart';

class EasyToUseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy To Use Toast Example'),
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
                    message: 'Success Message',
                  );
                },
                child: Text('Success Message'),
              ),
            ),
           SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showFail(
                    context,
                    message: 'Fail Message',
                  );
                },
                child: Text('Fail Message'),
              ),
            ),
          SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showInfo(
                    context,
                    message: 'Info Message',
                  );
                },
                child: Text('Info Message'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showWarning(
                    context,
                    message: 'Warning Message',
                  );
                },
                child: Text('Warning Message'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
