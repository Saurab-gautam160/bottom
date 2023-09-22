import 'package:bottomsheet_animation/provider/action_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeInfo extends StatefulWidget {
  const HomeInfo({super.key});

  @override
  State<HomeInfo> createState() => _HomeInfoState();
}

class _HomeInfoState extends State<HomeInfo> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SheetModel>(
      builder: (context, value, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Effiel Tower',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'Assets/image1.jpg',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    alignment: Alignment.topRight,
                    child: const Icon(
                      Icons.heart_broken_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
