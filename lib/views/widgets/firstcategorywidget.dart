import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/category_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Firstcategorywidget extends StatefulWidget {
  String imageUrl;
  String name;
  Firstcategorywidget({super.key, required this.imageUrl, required this.name});

  @override
  State<Firstcategorywidget> createState() => _FirstcategorywidgetState();
}

class _FirstcategorywidgetState extends State<Firstcategorywidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ZoomTapAnimation(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategoryScreen(),
              ),
            );
          },
          child: Container(
            width: 200,
            height: 130,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(widget.imageUrl), fit: BoxFit.cover),
            ),
            child: Text(
              widget.name,
              style: const TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
