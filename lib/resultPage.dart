import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lotto/main.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key}) : super(key: key);

  List<int> lottoNumList = [];

  getLottoNum() {
    Random random = Random();
    while (lottoNumList.length < 6) {
      int random_number = 1 + random.nextInt(45);
      if (!lottoNumList.contains(random_number)) {
        lottoNumList.add(random_number);
        //print(lottoNumList);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    getLottoNum();
    return Scaffold(
      appBar: AppBar(title: const Text('아무도 알려주지 마라')),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 20),
              LottoBall(lottoNumList: lottoNumList, ballNum: 0),
              LottoBall(lottoNumList: lottoNumList, ballNum: 1),
              LottoBall(lottoNumList: lottoNumList, ballNum: 2),
              LottoBall(lottoNumList: lottoNumList, ballNum: 3),
              LottoBall(lottoNumList: lottoNumList, ballNum: 4),
              LottoBall(lottoNumList: lottoNumList, ballNum: 5),
              SizedBox(width: 20)
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: SizedBox(
          height: 60,
          child: GestureDetector(
            onTap: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            );},
            child: const Center(child: Text('다른거도 궁금하지? 눌러라',style: TextStyle(fontSize: 20,color: Colors.white))),
          ),
        ),
      ),
    );
  }
}

class LottoBall extends StatelessWidget {
  const LottoBall({Key? key, this.lottoNumList, this.ballNum})
      : super(key: key);
  final lottoNumList;
  final ballNum;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 10,
      child: CircleAvatar(
        backgroundColor: Colors.amber,
        radius: 20,
        child: Text('${lottoNumList[ballNum]}'),
      ),
    );
  }
}
