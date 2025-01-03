import 'package:flutter/material.dart';

class WeatherItem extends StatelessWidget {
  final int value;
  final String unit;
  final String imgUrl;

  const WeatherItem(
      {super.key,
      required this.value,
      required this.unit,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(imgUrl),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          value.toString() + unit,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
