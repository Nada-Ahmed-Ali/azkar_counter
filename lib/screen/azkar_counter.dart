import 'package:flutter/material.dart';

import '../widgets/row_counter.dart';

class AzkarCounter extends StatefulWidget {
  const AzkarCounter({super.key});

  @override
  State<AzkarCounter> createState() => _AzkarCounterState();
}

class _AzkarCounterState extends State<AzkarCounter> {
  int count1 = 0, count2 = 0, count3 = 0, count4 = 0, count5 = 0;
  String zakr1 = 'سبحان الله',
      zakr2 = 'الحمد لله',
      zakr3 = 'الله أكبر',
      zakr4 = 'لا اله الا الله',
      zakr5 = 'استغفر الله واتوب اليه';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFAAAA),
        title: const Center(
          child: Text(
            'اذكار',
            style: TextStyle(color: Colors.white, fontSize: 70),
          ),
        ),
      ),
      backgroundColor: const Color(0xffECFFE6),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 60, 15, 15),
        child: Column(
          children: [
            RowCounter(onPressed: () {
              count1++;
              setState(() {

              });
            }, counter: count1, zakr1: zakr1),
            RowCounter(onPressed: () {
              count2++;
              setState(() {

              });
            }, counter: count2, zakr1: zakr2),
            RowCounter(onPressed: () {
              count3++;
              setState(() {

              });
            }, counter: count3, zakr1: zakr3),
            RowCounter(onPressed: () {
              count4++;
              setState(() {

              });
            }, counter: count4, zakr1: zakr4),
            RowCounter(onPressed: () {count5++;
            setState(() {

            });}, counter: count5, zakr1: zakr5),
          ],
        ),
      ),
    );
  }
}
