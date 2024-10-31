import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.account_circle, color: Colors.grey[700], size: 50),
            const SizedBox(width: 5),
            const Text("Ilxomov Abduaziz"),
          ],
        ),
      ),
    );
  }
}
