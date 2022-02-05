import 'package:flutter/material.dart';

class OrientationList extends StatelessWidget {
  const OrientationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: const TextStyle(fontSize: 20),
              ),
            );
          }),
        );
      }),
    );
  }
}
