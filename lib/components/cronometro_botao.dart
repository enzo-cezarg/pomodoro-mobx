import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    super.key,
    required this.texto,
    required this.icone,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        iconColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        textStyle: TextStyle(
          fontSize: 20,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 30,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
