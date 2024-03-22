import 'package:flutter/material.dart';
import 'dart:math' as math;

class InActiveCard extends StatelessWidget {
  const InActiveCard({
    super.key,
    required this.title,
    required this.price,
    required this.onClick,
  });
  final String title;
  final String price;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 250,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16 * 4,
            ),
            Transform.rotate(
              angle: -math.pi / 2,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '\$',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
