import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final LocalAuthentication auth; // Biometric authentication instance
  bool _supportState = false; // Device support state for biometrics

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication(); // Initialize the LocalAuthentication instance
    auth.isDeviceSupported().then((bool isSupported) => setState(() {
          _supportState = isSupported; // Check if device supports biometric authentication
        }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fingerprint/FaceID Authentication'),
        ),
        body: Column(
          children: [
            // Display device support state for biometrics
            if (_supportState)
              const Text('This device is supported')
            else
              const Text('This device is not supported'),
            const Divider(),
            // Button to get available biometric types
            ElevatedButton(
                onPressed: _getBiometrics,
                child: const Text('Get available biometrics')),
            // Button to initiate biometric authentication
            ElevatedButton(
                onPressed: _authenticate,
                child: const Text('Authenticate'))
          ],
        ),
      ),
    );
  }

  // Function to authenticate using biometrics
  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
          localizedReason: 'Please authenticate to access the app',
          options: const AuthenticationOptions(
              // Require biometric authentication only
              stickyAuth: true,
              biometricOnly: true));
      if (kDebugMode) {
        print('Authenticated: $authenticated');
      }
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  // Function to get available biometric types
  Future<void> _getBiometrics() async {
    List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics(); // Get available biometric types
    if (kDebugMode) {
      print('List of available biometrics: $availableBiometrics');
    }

    if (!mounted) {
      return;
    }
  }
}
