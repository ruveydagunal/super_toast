import 'package:example/view/fail_toast.dart';
import 'package:example/view/info_toast_view.dart';
import 'package:example/view/success_toast.dart';
import 'package:example/view/warning_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InfoView()));
                  
                },
                child: Text('Info Message'),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WarningView()));
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
                    message: 'Example Toast Message',
                    duration: Duration(seconds: 2),
                    prefixIcon: CircleAvatar(radius : 20, backgroundImage: NetworkImage
                    ('https://avatars.githubusercontent.com/u/136679910?v=4'), )
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
