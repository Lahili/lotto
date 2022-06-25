import 'package:flutter/material.dart';
import 'package:lotto/resultPage.dart';

class ContractPage extends StatelessWidget {
  ContractPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('혼자 보거라')),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text('나랑 반띵 동의 하면 아래 지장 찍어라'),
            const SizedBox(height: 40),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(),
                  ),
                );
              },
              icon: const Icon(Icons.fingerprint,size: 60),
            ),
            const SizedBox(height: 50,),
            const Text('싫어? 잘가라. 나가는 버튼은 잘 찾아봐라'),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close,size: 8),
            ),
          ],
        ),
      ),
    );
  }
}
