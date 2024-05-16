import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'planet_data.dart';
import 'ar_model_page.dart';

class PlanetDetailsPage extends StatefulWidget {
  final PlanetData planet;

  const PlanetDetailsPage({Key? key, required this.planet}) : super(key: key);

  @override
  _PlanetDetailsPageState createState() => _PlanetDetailsPageState();
}

class _PlanetDetailsPageState extends State<PlanetDetailsPage> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    speakOverview();
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop(); // Stop speech when the widget is disposed
  }

  Future<void> speakOverview() async {
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(widget.planet.overview ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.planet.title ?? 'Unknown'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/galaxy_background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 20),
                Center(
                  child: Image.asset(
                    'assets/${widget.planet.title!.toLowerCase()}.png',
                    height: 250,
                    width: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '${widget.planet.overview}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space below the overview text
                Container(
                  // Wrap the ElevatedButton with a Container
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    // Create the View AR Model button
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ARModelPage(planet: widget.planet),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Button background color
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Set the border radius
                      ),
                    ),
                    child: Text(
                      'View AR Model',
                      style: TextStyle(
                          fontSize: 16, color: Colors.black), // Text color
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
