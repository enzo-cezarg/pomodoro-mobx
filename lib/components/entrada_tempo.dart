import 'package:flutter/material.dart';
import 'package:mobx_pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(10),
                backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
              ),
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 25,
              ),
            ),
            Text(
              '$valor min',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(10),
                backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
              ),
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
