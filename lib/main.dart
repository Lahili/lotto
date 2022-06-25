import 'package:flutter/material.dart';
import 'package:lotto/contractPage.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('초과학으로 로또번호 알려주마')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ScienButton(image: 'images/bitcoin.jpeg',text: ' 비트코인이론으로 로또블록체인 알려주마'),
          ScienButton(image: 'images/btype.jpeg',text: ' 혈액형 성격이론이 로또 알려준다-단 RH-O형만'),
          ScienButton(image:'images/harrypotter.jpeg', text: ' 아 브 라 카 로 또 마 자 라'),
          ScienButton(image: 'images/germanium.png', text: ' 게르마늄 음이온의 힘으로 알려주마'),
          ScienButton(image: 'images/flat_earth.jpeg',text: ' 평면지구이론으로 분석해서 로또 알려주마',)],
      ),
    );
  }
}

class ScienButton extends StatelessWidget {
  const ScienButton({Key? key, this.image, this.text}) : super(key: key);
  final image;
  final text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ContractPage(),
          ),
        );
      },
      child: Expanded(
        child: Container(
          color: Colors.green,
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Image.asset('$image'),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}

