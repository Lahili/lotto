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
        children: const [Bitcoin(), Btype(), HarryPotter(), Practal(), FlatEarth()],
      ),
    );
  }
}

class Bitcoin extends StatelessWidget {
  const Bitcoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(' bitcoin got pressed');
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
          child: Row(children: [
            Image.asset('images/bitcoin.jpeg'),
            const Text(' 비트코인이론으로 로또블록체인 알려주마')
          ]),

        ),
      ),
    );
  }
}

class Btype extends StatelessWidget {
  const Btype({Key? key}) : super(key: key);

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
              Image.asset('images/btype.jpeg'),
              const Text(' 혈액형 성격이론이 로또 알려준다-단 RH-O형만'),
            ],
          ),
        ),
      ),
    );
  }
}

class HarryPotter extends StatelessWidget {
  const HarryPotter({Key? key}) : super(key: key);

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
              Image.asset('images/harrypotter.jpeg'),
              const Text(' 아 브 라 카 로 또 마 자 라'),
            ],
          ),
        ),
      ),
    );
  }
}

class Practal extends StatelessWidget {
  const Practal({Key? key}) : super(key: key);

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
              Image.asset('images/germanium.png'),
              const Text(' 게르마늄 음이온의 힘으로 알려주마'),
            ],
          ),
        ),
      ),
    );
  }
}

class FlatEarth extends StatelessWidget {
  const FlatEarth({Key? key}) : super(key: key);

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
              Image.asset('images/flat_earth.jpeg'),
              const Text(' 평면지구이론으로 분석해서 로또 알려주마'),
            ],
          ),
        ),
      ),
    );
  }
}
