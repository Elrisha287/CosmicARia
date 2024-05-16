import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'planet_data.dart';

class ARModelPage extends StatelessWidget {
  final PlanetData planet;

  const ARModelPage({Key? key, required this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3D Model Viewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ModelViewerWidget(
        planet: planet,
      ),
    );
  }
}

class ModelViewerWidget extends StatelessWidget {
  final PlanetData planet;

  const ModelViewerWidget({Key? key, required this.planet}) : super(key: key);

  String getGlbParam() {
    if (planet.title?.toLowerCase() != null) {
      return 'assets/models/${planet.title?.toLowerCase()}.glb';
    } else {
      return 'path/to/default_model.glb'; // Replace with a default path
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3D Model Viewer'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/galaxy_background.jpg', // Path to your galaxy background image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ModelViewer(
            src: getGlbParam(),
            alt: '3D Model',
            ar: true,
            autoRotate: true,
            autoPlay: true,
            cameraControls: true,
          ),
        ],
      ),
    );
  }
}
