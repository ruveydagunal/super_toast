# Super Toast

Super Toast is a versatile Flutter package that allows you to display toast messages with various customization options. You can use it to show success, fail, info, warning, and basic toasts, and customize them to your liking. Super Toast supports adding icons, both from local assets and online sources, and lets you modify the background color, border color, text color, and more.

## Features


<img align="right" src="https://github.com/ruveydagunal/super_toast/assets/136679910/8548fca5-bdec-4252-8757-a8e994ab2d7c" alt="Success Screenshot" width="250" height="500"/>

Basic Mode: The basic mode of usage is the most practical. Simply call SuperToast.showSuccess(), SuperToast.showFail(), SuperToast.showInfo(), SuperToast.showWarning() or SuperToast.show() and provide the message you want to display.

- Custom Usage: After calling SuperToast.showSuccess(), you can customize the following default settings:

  - Background color
  - Border color
  - Text color
  - Border radius
  - Duration
  - Message position

  In addition to these options, you can also add widgets before and after the text.
  These widgets can be:

  - Icons from IconData
  - Assets
  - Network resources.

## Easy to Use

<img align="right" src="https://github.com/ruveydagunal/super_toast/assets/136679910/083e6bee-4196-44ec-92d4-ebc54c25b62b" alt="Success Screenshot" width="250" height="500"/>

- SuperToast.showSuccess():
  - Green Background Color
  - Duration(seconds: 2)
  - White Text Color
  - Transparent Border Color
  - BorderRadius.circular(16)
  - Position: MediaQuery.of(context).size.height * 0.05

- SuperToast.showFail():
  - Red Background Color
  - Duration(seconds: 2)
  - White Text Color
  - Transparent Border Color
  - BorderRadius.circular(16)
  - Position: MediaQuery.of(context).size.height * 0.05

- SuperToast.showInfo():
  - Blue Background Color
  - Duration(seconds: 2)
  - White Text Color
  - Transparent Border Color
  - BorderRadius.circular(16)
  - Position: MediaQuery.of(context).size.height * 0.05

- SuperToast.showWarning():
  - Orange Background Color
  - Duration(seconds: 2)
  - White Text Color
  - Transparent Border Color
  - BorderRadius.circular(16)
  - Position: MediaQuery.of(context).size.height * 0.05

- SuperToast.show():
  - Transparent Background Color
  - Duration(seconds: 2)
  - Black Text Color
  - Transparent Border Color
  - BorderRadius.circular(16)
  - Position: MediaQuery.of(context).size.height * 0.05





## Versions

|Versions Name | Version |  
|--------------|---------|
| Flutter      | 3.13.0  |
| Dart         | 3.1.0   |


## Constructor

```
BuildContext context,
{required String message,
 Color? backgroundColor,
 Color? textColor,
 double? borderRadius,
 Color? borderColor,
 Widget? prefixIcon,
 Widget? suffixIcon,
 Duration? duration = const Duration(seconds: 2),
 double? bottomPosition}) {
 final overlayState = Overlay.of(context);
 OverlayEntry overlayEntry;

```

## Example Usage

```
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

          ],
        ),
      ),
    );
  }
}

-----------------

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


```




## Contributors 

- [Ruveyda Dilara Günal](https://github.com/ruveydagunal)


## Supporting
- [Gürkan Fikret Günak](https://github.com/gurkanfikretgunak)
- [Mete Çoban](https://github.com/metecoban)
