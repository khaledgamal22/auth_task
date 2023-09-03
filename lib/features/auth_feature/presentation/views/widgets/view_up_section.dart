import 'package:flutter/material.dart';

class ViewUpSection extends StatelessWidget {
  const ViewUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.22,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.75),
              bottomLeft: Radius.circular(10.75),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/Frame 645.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.sizeOf(context).width * 0.5 - 50,
          top: MediaQuery.sizeOf(context).height * 0.22 - 50,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage(
                    'assets/images/451e953204e8b70f44fb0ec4271b0e89.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
