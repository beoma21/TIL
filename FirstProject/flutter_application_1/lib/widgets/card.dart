import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _blackColor = const Color(0xFF181818);
  final double order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * -20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(amount,
                        style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20)),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(8, 10),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 98,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
