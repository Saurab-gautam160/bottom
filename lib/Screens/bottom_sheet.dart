import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class bottomInfo extends StatelessWidget {
  bottomInfo({super.key});
  String content =
      " A testament of engineering and desgn, Effel's creation,a treasure to find. From sunrise to dusk, it casts its spell. The Eiffel Tower, where stories dwell. Eiffel Tower's beauty, a timeless embrace.This iconic landmark, a global pearl.";
  final String rome =
      "The colosseum is an elliptical amphitheatre in the center of the city of Rome";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: const EdgeInsets.all(5),
                        elevation: 12,
                        child: Image.asset('Assets/other_image1.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: const EdgeInsets.all(5),
                        elevation: 12,
                        child: Image.asset('Assets/other_image2.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: const EdgeInsets.all(5),
                        elevation: 12,
                        child: Image.asset('Assets/other_image3.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: const EdgeInsets.all(5),
                        elevation: 12,
                        child: Image.asset('Assets/other_image4.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: const EdgeInsets.all(5),
                        elevation: 12,
                        child: Image.asset('Assets/other_image5.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: ReadMoreText(
                content,
                trimLines: 3,
                textAlign: TextAlign.center,
                trimMode: TrimMode.Line,
                trimCollapsedText: "Read more",
                trimExpandedText: "Read less",
                moreStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                lessStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                margin: const EdgeInsets.all(16),
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  'Assets/image2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Top Sights',
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 105,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    margin: const EdgeInsets.all(5),
                    elevation: 12,
                    child: Image.asset('Assets/other_image1.png'),
                  ),
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Colosseum',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 105,
                    width: 150,
                    child: ReadMoreText(
                      rome,
                      trimLines: 3,
                      textAlign: TextAlign.center,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read more",
                      trimExpandedText: "Read less",
                      moreStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          ElevatedButton.icon(
              onPressed: () {
                // Navigator.of(context).pop(
                //   MaterialPageRoute(
                //     builder: (context) => const Home(),
                //   ),
                // );
              },
              icon: const Icon(Icons.flight),
              label: const Text('Search Flights'))
        ],
      ),
    );
  }
}
