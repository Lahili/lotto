import 'package:flutter/material.dart';
import 'package:lotto/resultPage.dart';

class ContractPage extends StatelessWidget {
  ContractPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('혼자 보거라')),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Text('나랑 반띵 동의 하면 아래 지장 찍거라'),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.fingerprint),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
