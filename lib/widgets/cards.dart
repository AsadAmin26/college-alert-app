import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard(this.bgColor, this.title, this.url, this.body, this.date,
      {super.key});
  final Color bgColor;
  final String title, url, body, date;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 200,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  background: Paint()..color = Colors.black,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    url,
                    width: 50,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    body,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              ' Date : $date ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
