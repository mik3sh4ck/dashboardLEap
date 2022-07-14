import 'package:flutter/material.dart';

class ReusableCardSaldo extends StatelessWidget {
  ReusableCardSaldo({required this.Title, required this.Saldo});
  final String Title;
  final int Saldo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          children: [
            Text("$Title"),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text("Rp. "),
                Spacer(),
                Text("$Saldo"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
