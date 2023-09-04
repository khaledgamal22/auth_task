import 'package:flutter/material.dart';

class ViewUpProfSection extends StatelessWidget {
  const ViewUpProfSection({super.key});

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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/346780424_714371070489212_836219911072118910_n.jpg'),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ],
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
