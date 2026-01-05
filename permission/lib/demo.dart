import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();

    if (status.isGranted) {
      debugPrint("Camera permission granted");
    } else if (status.isDenied) {
      debugPrint("Camera permission denied");
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Demo"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Camera permission"),
            leading: const Icon(Icons.camera_alt),
            onTap: _requestCameraPermission,
          ),
        ],
      ),
    );
  }
}
