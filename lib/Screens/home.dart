import 'package:bottomsheet_animation/Screens/bottom_sheet.dart';
import 'package:bottomsheet_animation/Screens/homeInfo.dart';
import 'package:bottomsheet_animation/provider/action_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<SheetModel>(
        builder: (BuildContext context, SheetModel value, Widget? child) =>
            Scaffold(
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              const HomeInfo(),
              //const DraggableText(),
              DraggableScrollableSheet(
                initialChildSize: 0.40,
                minChildSize: 0.30,
                maxChildSize: 0.80,
                snapSizes: const [0.30, 0.40, 0.80],
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        bottomInfo(),
                      ],
                    ),
                  );
                },
              ),
              const Positioned(
                left: 10,
                bottom: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Eiffel Tower',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          'Paris, France',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
