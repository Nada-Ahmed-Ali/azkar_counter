
import 'package:flutter/material.dart';

class RowCounter extends StatelessWidget {
  const RowCounter( {super.key, required this.onPressed, required this.counter, required this.zakr1});
  final int counter;
  final String zakr1;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffA1DD70),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        '$counter',
                        style: const TextStyle(
                            color: Color(0xffFF7777),

                            fontSize: 30),

                      ),
                    ),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffA1DD70),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      zakr1,
                      style: const TextStyle(
                          color: Color(0xffFF7777),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: AutofillHints.birthdayDay),

                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffA1DD70),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                      onPressed: onPressed,
                      icon: const Icon(Icons.add),
                      color: const Color(0xffFF7777),
                      iconSize: 30,
                      hoverColor: const Color(0xffFFAAAA)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
