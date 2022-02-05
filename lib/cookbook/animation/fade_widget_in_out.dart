import 'package:flutter/material.dart';

class WidgetInOut extends StatefulWidget {
  const WidgetInOut({Key? key}) : super(key: key);

  @override
  _WidgetInOutState createState() => _WidgetInOutState();
}

class _WidgetInOutState extends State<WidgetInOut> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
