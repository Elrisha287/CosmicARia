import 'package:flutter/material.dart';
import 'planet_data.dart';
import 'planet_details.dart';
import 'planet_tile.dart';
import 'solar_system_page.dart';

void main() {
  runApp(CatalogueApp());
}

class CatalogueApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CosmicARia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CosmicARia'),
        automaticallyImplyLeading: false, // Hide back button
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/welcome_background2.jpg', // Replace 'background_image.jpg' with your image file
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Welcome message
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'CosmicARia',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CatalogueScreen(), // Navigate to the catalogue screen after clicking the button
                      ),
                    );
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.black, // Font color of the button
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CatalogueScreen extends StatelessWidget {
  final List<PlanetData> planets = [
    PlanetData(
      title: 'Sun',
      gravity: '274',
      distance: '0.00',
      png: 'assets/sun.png',
      overview:
          "The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as visible light and infrared radiation. It is by far the most important source of energy for life on Earth. Its diameter is about 1.39 million kilometres (864,000 miles), or 109 times that of Earth. Its mass is about 330,000 times that of Earth; it accounts for about 99.86% of the total mass of the Solar System.\nRoughly three quarters of the Sun's mass consists of hydrogen (~73%); the rest is mostly helium (~25%), with much smaller quantities of heavier elements, including oxygen, carbon, neon and iron.",
    ),
    PlanetData(
      title: 'Mercury',
      gravity: '3.7',
      distance: '0.39',
      png: 'assets/mercury.png',
      overview:
          "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes (Ἑρμῆς).\nLike Venus, Mercury orbits the Sun within Earth's orbit as an inferior planet, and its apparent distance from the Sun as viewed from Earth never exceeds 28°.\nThis proximity to the Sun means the planet can only be seen near the western horizon after sunset or the eastern horizon before sunrise, usually in twilight. At this time, it may appear as a bright star-like object but is often far more difficult to observe than Venus.\nFrom Earth, the planet telescopically displays the complete range of phases, similar to Venus and the Moon, which recurs over its synodic period of approximately 116 days.",
    ),
    PlanetData(
      title: 'Venus',
      gravity: '8.87',
      distance: '0.72',
      png: 'assets/venus.png',
      overview:
          "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earth's night sky after the Moon, Venus can cast shadows and can be, on rare occasions, visible to the naked eye in broad daylight.\n Venus lies within Earth's orbit, and so never appears to venture far from the Sun, either setting in the west just after dusk or rising in the east a little while before dawn. Venus orbits the Sun every 224.7 Earth days.\n With a rotation period of 243 Earth days, it takes significantly longer to rotate about its axis than any other planet in the Solar System, and does so in the opposite direction to all but Uranus (meaning the Sun rises in the west and sets in the east). Venus does not have any moons, a distinction it shares only with Mercury among the planets in the Solar System.",
    ),
    PlanetData(
      title: 'Earth',
      gravity: '9.81',
      distance: '1.00',
      png: 'assets/earth.png',
      overview:
          "Earth is the third planet from the Sun and the only astronomical object known to harbor and support life. About 29.2% of Earth's surface is land consisting of continents and islands. The remaining 70.8% is covered with water, mostly by oceans, seas, gulfs, and other salt-water bodies, but also by lakes, rivers, and other freshwater, which together constitute the hydrosphere.\n Much of Earth's polar regions are covered in ice. Earth's outer layer is divided into several rigid tectonic plates that migrate across the surface over many millions of years, while its interior remains active with a solid iron inner core, a liquid outer core that generates Earth's magnetic field, and a convective mantle that drives plate tectonics.",
    ),
    PlanetData(
      title: 'Mars',
      gravity: '3.721',
      distance: '1.52',
      png: 'assets/mars.png',
      overview:
          "Mars is the forth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the \"Red Planet\".\nThe latter refers to the effect of the iron oxide prevalent on Mars's surface, which gives it a reddish appearance distinctive among the astronomical bodies visible to the naked eye.\nMars is a terrestrial planet with a thin atmosphere, with surface features reminiscent of the impact craters of the Moon and the valleys, deserts and polar ice caps of Earth.",
    ),
    PlanetData(
      title: 'Jupiter',
      gravity: '24.79',
      distance: '5.20',
      png: 'assets/jupiter.png',
      overview:
          "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass (more than) two and a half times that of all the other planets in the Solar System combined, but (a little) less than one-thousandth the mass of the Sun.\nJupiter is the third-brightest natural object in the Earth's night sky after the Moon and Venus. It has been observed since pre-historic times and is named after the Roman god Jupiter, the king of the gods, because of its massive size",
    ),
    PlanetData(
      title: 'Saturn',
      gravity: '10.44',
      distance: '9.58',
      png: 'assets/saturn.png',
      overview:
          "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.\n It only has one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive. Saturn is named after the Roman god of wealth and agriculture; its astronomical symbol (♄) represents the god's sickle.\n The Romans named the seventh day of the week Saturday, Sāturni diēs (\"Saturn's Day\") no later than the 2nd century for the planet Saturn.",
    ),
    PlanetData(
      title: 'Uranus',
      gravity: '8.69',
      distance: '19.22',
      png: 'assets/uranus.png',
      overview:
          "Uranus is the seventh planet from the Sun. Its name is a reference to the Greek god of the sky, Uranus, who, according to Greek mythology, was the great-grandfather of Ares (Mars), grandfather of Zeus (Jupiter) and father of Cronus (Saturn).\nIt has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn. For this reason, scientists often classify Uranus and Neptune as \"ice giants\" to distinguish them from the other gas giants.\nUranus's atmosphere is similar to Jupiter's and Saturn's in its primary composition of hydrogen and helium, but it contains more \"ices\" such as water, ammonia, and methane, along with traces of other hydrocarbons. It has the coldest planetary atmosphere in the Solar System.",
    ),
    PlanetData(
      title: 'Neptune',
      gravity: '11.15',
      distance: '30.05',
      png: 'assets/neptune.png',
      overview:
          "Neptune is the eighth and farthest-known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet.\n It is 17 times the mass of Earth, slightly more massive than its near-twin Uranus. Neptune is denser and physically smaller than Uranus because its greater mass causes more gravitational compression of its atmosphere. The planet orbits the Sun once every 164.8 years at an average distance of 30.1 AU (4.5 billion km; 2.8 billion mi).\nIt is named after the Roman god of the sea and has the astronomical symbol ♆, a stylised version of the god Neptune's trident.",
    ),
    PlanetData(
      title: 'Moon',
      gravity: '1.62',
      distance: '384,400',
      png: 'assets/moon.png',
      overview:
          "The Moon is Earth's only natural satellite. At about one-quarter the diameter of Earth (comparable to the width of Australia), it is the largest natural satellite in the Solar System relative to the size of its planet, the fifth largest satellite in the Solar System overall, and is larger than any dwarf planet.\nOrbiting Earth at an average distance of 384,400 km (238,900 mi), or about 30 times Earth's diameter, its gravitational influence slightly lengthens Earth's day and is the main driver of Earth's tides. The Moon is classified as a planetary-mass object and a differentiated rocky body, and lacks any significant atmosphere, hydrosphere, or magnetic field.\nIts surface gravity is about one-sixth of Earth's (0.1654 g); Jupiter's moon Io is the only satellite in the Solar System known to have a higher surface gravity and density.",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CosmicARia'),
      ),
      body: ListView.builder(
        itemCount: planets.length + 1, // Add 1 for the "View Solar System" tile
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SolarSystemPage(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'View Solar System',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            final planet = planets[index - 1];
            return PlanetTile(
              planet: planet,
            );
          }
        },
      ),
    );
  }
}
