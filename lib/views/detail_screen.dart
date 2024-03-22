import 'package:credit_app/constants/constants.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    color: primaryColor,
                    child: Column(
                      children: [
                        const SizedBox(height: 16 * 4),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'assets/icons/back.png',
                              color: Colors.white,
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16 * 2),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Investments',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/apple.png',
                                color: Colors.white,
                                height: 25,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Apple Inc.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16 * 2),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '400',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 6,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '\$',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Monthly payment',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: lightSecondaryColor,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: lightSecondaryColor,
                            border: Border(
                              top: BorderSide(
                                color: primaryColor,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: lightSecondaryColor,
                            border: Border(
                              top: BorderSide(
                                color: primaryColor,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: lightSecondaryColor,
                            border: Border(
                              top: BorderSide(
                                color: primaryColor,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
