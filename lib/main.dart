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
  late final LocalAuthentication auth;
  bool _supportState = false;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then((bool isSupported) => setState(() {
          _supportState = isSupported;
        })); //device scan how to supportß
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fingerprint/FaceID Authentiction'),
        ),
        body: Column(
          children: [
            if (_supportState)
              const Text('This device is supported')
            else
              const Text('This devide is not supported'),
            const Divider(),
            //get bometrics type
            ElevatedButton(
                onPressed: _getBiometrics,
                child: const Text('Get avaliable biometrics')),
            //Emülatör üzerinden face id denemesi
            ElevatedButton(
                onPressed: _authenticate,
                child: const Text('Get Authenticated'))
          ],
        ),
      ),
    );
  }

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
          localizedReason: 'Subscribe or you never find ant stCK overflow',
          options: const AuthenticationOptions(
              //pin code or bionetric photo
              stickyAuth: true,
              biometricOnly: true));
      if (kDebugMode) {
        print('Authentcared: $authenticated');
      }
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _getBiometrics() async {
    List<BiometricType> avaliableBiometrics =
        await auth.getAvailableBiometrics(); //return to avaliable biometrics
    if (kDebugMode) {
      print('list of avaliableBiometrics: $avaliableBiometrics');
    }

    if (!mounted) {
      return;
    }
  }
}
