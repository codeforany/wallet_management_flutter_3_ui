
import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class TabIconTextButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isSelect;
  const TabIconTextButton({super.key, required this.title, required this.icon, this.isSelect = false, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: onPressed,
                child: Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: isSelect ? TColor.primary : Colors.white,

                          borderRadius: BorderRadius.circular(15),
                          boxShadow:  isSelect ? null : [
                            BoxShadow(
                              color: const Color(0xffD4CEFE).withOpacity(0.8),
                              offset: const Offset(0, 4),
                              blurRadius: 10
                            )
                          ] ),
                      child:  Icon(
                        icon,
                        color: isSelect ? Colors.white :  TColor.primary,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          color: Color(0xff747474),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              );
  }
}