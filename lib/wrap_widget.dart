import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
      ),
      body: Center(
        child: Container(
            width: 300,
            height: 400,
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              direction: Axis.vertical,
          children: [
            Text('Flutter dev',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.redAccent,
              decoration: TextDecoration.combine(  //line below over and upper
                [TextDecoration.overline,
                  TextDecoration.lineThrough,
                  TextDecoration.underline,
                 ]
              ),
              letterSpacing: 4,
              wordSpacing: 3,
              decorationColor: Colors.yellow,
              decorationStyle:TextDecorationStyle.wavy  //dotted solid dashed wavy
            ),
            )
          ],
        )
        ),
      ),
    );
  }

  Widget GetButton(String title) {
    return Container(
      color: Colors.deepOrange,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${title}",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
