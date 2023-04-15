import 'package:flutter/material.dart';

class PageNews extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const PageNews({
    required this.title,
    required this.subtitle,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50)),
            height: 480,
            width: 360,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(image, fit: BoxFit.cover),
            )),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.transparent,
                child: Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
