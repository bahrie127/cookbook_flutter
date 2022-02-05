import 'package:flutter/material.dart';

class FontPackageDemo extends StatelessWidget {
  const FontPackageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Using font from the awesome package',
          style: TextStyle(fontFamily: 'Quintessential'),
        ),
      ),
    );
  }
}
