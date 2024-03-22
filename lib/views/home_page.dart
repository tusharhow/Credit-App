import 'package:credit_app/components/bottom_nav_bar.dart';
import 'package:credit_app/components/dashed_painter.dart';
import 'package:credit_app/components/main_credit_card.dart';
import 'package:credit_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: BottomNavBar(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                          color: lightSecondaryColor,
                          height: 250,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 16 * 5),
                                child: Transform.rotate(
                                  angle: 180,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.white24,
                                        width: 1,
                                      ),
                                    ),
                                    child: Center(
                                      child: Transform.rotate(
                                        angle: -180,
                                        child: const Text(
                                          "1",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              const Padding(
                                padding: EdgeInsets.only(top: 16 * 5),
                                child: Text(
                                  'My Loans',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Expanded(
                      child: Container(
                          color: secondaryColor,
                          height: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16 * 5),
                                child: Image.asset(
                                  'assets/icons/qr.png',
                                  width: 25,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 16),
                              const Padding(
                                padding: EdgeInsets.only(top: 16 * 5),
                                child: Text(
                                  'QR',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                Container(
                    color: primaryColor,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16 * 11,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Transform.rotate(
                                angle: 180,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white24,
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Transform.rotate(
                                      angle: -180,
                                      child: const Text(
                                        "4",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Text(
                              'Inactive',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Image.asset(
                                'assets/icons/menu.png',
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 250,
                              width: 110,
                              child: CustomPaint(
                                painter: DashRectPainter(
                                  color: Colors.white12,
                                  strokeWidth: 2,
                                  gap: 10,
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 16 * 4,
                                    ),
                                    Transform.rotate(
                                      angle: -math.pi / 2,
                                      child: const Text(
                                        '10 Oct 2024',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 16),
                                      child: Text(
                                        'Draft',
                                        style: TextStyle(
                                          color: Colors.white24,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            const InActiveCard(
                              title: 'Audi Q8',
                              price: '40K',
                            ),
                            const SizedBox(width: 16),
                            const InActiveCard(
                              title: 'Equipment',
                              price: '800',
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
            const MainCreditCard(),
          ],
        ),
      ),
    );
  }
}

class InActiveCard extends StatelessWidget {
  const InActiveCard({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 16 * 3,
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
    );
  }
}
