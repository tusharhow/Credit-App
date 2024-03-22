import 'package:credit_app/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 75,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 110,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.green.withOpacity(0.7),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Credits',
                    style: TextStyle(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            'assets/icons/pie.png',
            width: 20,
            height: 20,
          ),
          Image.asset(
            'assets/icons/transfer.png',
            width: 20,
            height: 20,
          ),
          Image.asset(
            'assets/icons/pie.png',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
