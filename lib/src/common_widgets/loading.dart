import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      key: Key('Loading'),
      child: CircularProgressIndicator.adaptive()
    );
  }
}
