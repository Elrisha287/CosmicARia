import 'package:flutter/material.dart';
import 'planet_data.dart';
import 'planet_details.dart';

class PlanetTile extends StatelessWidget {
  final PlanetData planet;

  const PlanetTile({Key? key, required this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(planet.title);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlanetDetailsPage(planet: planet),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 100, // Adjust height as needed
              width: 100, // Adjust width as needed
              child: Image.asset(
                'assets/${planet.title?.toLowerCase() ?? ''}.png', // Handling potential null value
                fit: BoxFit.cover,
                color: null, // Original color
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    planet.title ?? '', // Handling potential null value
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(
                        'assets/gravity.png',
                        height: 20,
                        width: 20,
                        color: null, // Original color
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Gravity: ${planet.gravity ?? ''}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(
                        'assets/distance.png',
                        height: 20,
                        width: 20,
                        color: null, // Original color
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Distance: ${planet.distance ?? ''}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
