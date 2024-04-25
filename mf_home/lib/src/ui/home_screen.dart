import 'package:flutter/material.dart';
import 'package:mf_home/src/domain/home_config.dart';

class HomeScreen extends StatelessWidget {
  static String homeRoute = '/home';
  final HomeConfig homeConfig;
  const HomeScreen(this.homeConfig, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/presentation.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Card(
            child: ListTile(
              title: const Text('Información Personal'),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () => homeConfig.navigateToCreci.call(),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Card(
            child: ListTile(
              title: const Text('SAP'),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () => homeConfig.navigateToSap.call(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
