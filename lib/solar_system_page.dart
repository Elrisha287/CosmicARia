import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class SolarSystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solar System'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/galaxy_background.jpg', // Path to your galaxy background image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: ModelViewer(
              src: 'assets/models/solar_system.glb', // Path to your solar system .glb file
              alt: 'Solar System',
              ar: true,
              autoRotate: true,
              autoPlay: true,
              cameraControls: true,
            ),
          ),
        ],
      ),
    );
  }
}
