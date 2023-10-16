import 'package:flutter/material.dart';
import 'package:super_toast/super_toast.dart';



class ExampleView extends StatefulWidget {
  @override
  _ExampleViewState createState() => _ExampleViewState();
}

class _ExampleViewState extends State<ExampleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              onPressed: () {
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            content: SuperToastWidget.success(
                              text: 'Deneme',
                            )));
              },
              child: Text('deneme'),
            ),
          ],
        ),
      ),
    );
  }
}
