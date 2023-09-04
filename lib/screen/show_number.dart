import 'package:flutter/material.dart';

class ShowNumber extends StatelessWidget {
  const ShowNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lucky Number'),
      ),
      body: const Column(
        children: [Text('Lucky Bro')],
      ),
    );
  }
}
