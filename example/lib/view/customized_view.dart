import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:super_toast/super_toast.dart';

class CustomizedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customized Toast Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showFail(context,
                      message: 'Is Not Working',
                      prefixIcon: Icon(
                        Icons.clear,
                        color: Colors.white,
                      ));
                },
                child: Text('Message with Prefix Icon'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showSuccess(context,
                      message: 'Success',
                      suffixIcon: Icon(
                        Icons.check,
                        color: Colors.white,
                      ));
                },
                child: Text('Message with Suffix Icon'),
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
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.showWarning(
                    context,
                    message: 'Warning Message',
                    borderColor: Colors.orange,
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                    suffixIcon: SvgPicture.asset('assets/icons/icon_warning.svg')
                     
                  );
                },
                child: Text('Warning Message with Assets'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  SuperToast.show(
                    context,
                    message: 'Custom Message',
                    duration: Duration(seconds: 2),
                    borderRadius: 2,
                    suffixIcon: Icon(Icons.flutter_dash),
                    borderColor: Colors.black
                  );
                },
                child: Text('Custom Message'),
              ),
            ),
            SizedBox(
              width: 250,
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
                child: Text('Message with Image '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
