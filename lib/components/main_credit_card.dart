import 'package:credit_app/constants/constants.dart';
import 'package:flutter/material.dart';

class MainCreditCard extends StatelessWidget {
  const MainCreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      left: 16,
      right: 16,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        height: 250,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    )),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16 * 2, left: 16 * 2),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet,
                            color: primaryColor,
                            size: 25,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Overdue arears',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 16, left: 16 * 2, right: 16 * 2),
                      child: Row(
                        children: [
                          Text(
                            '5800',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '\$',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 16 * 3),
                          Text(
                            'Remains to\npay',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: lightOrangeColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        'Unpaid loan',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '18',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Oct',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '960',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '\$',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
