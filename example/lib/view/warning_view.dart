import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_toast/super_toast.dart';

class WarningView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warning Toast Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showWarning(
                    context,
                    message: 'Warning Message',
                  );
                },
                child: Text('Basic Warning Message'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showWarning(
                    context,
                    message: 'Warning',
                    borderColor: Colors.orange,
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                    suffixIcon: SvgPicture.asset('assets/icons/icon_warning.svg')
                     
                  );
                },
                child: Text('Warning Message with Assets'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
