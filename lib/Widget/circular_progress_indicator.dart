import 'package:flutter/material.dart';
class CircularProgress extends StatelessWidget {
  const CircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Center(child: CircularProgressIndicator(),
      ),
    );
  }
}