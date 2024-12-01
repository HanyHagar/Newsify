import 'package:flutter/material.dart';

class ErrorRequestContainer extends StatelessWidget {
  const ErrorRequestContainer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Image.asset(
              'assets/error.png',
            width: 150,
            height: 100,
          ),
          const SizedBox(height: 5,),
          const Text(
              "Data Not Found,Try Again Later",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
