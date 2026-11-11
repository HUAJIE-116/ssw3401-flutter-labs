import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: <Widget>[
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Good morning', style: Styles.headLineStyle3),
                    const SizedBox(height: 5),
                    Text('Book Tickets', style: Styles.headLineStyle1),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Semantics(
                label: 'Book Tickets logo',
                image: true,
                child: Container(
                  key: const Key('booking-logo'),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/img_1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
