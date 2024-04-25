import 'package:flutter/material.dart';
import 'package:mf_creci/mf_creci.dart';

class CreciScreen extends StatefulWidget {
  static String creciRoute = '/creciRoute';
  final CreciConfig creciConfig;
  const CreciScreen(this.creciConfig, {super.key});

  @override
  State<CreciScreen> createState() => _CreciScreenState();
}

class _CreciScreenState extends State<CreciScreen> {
  final heading = 'Jeisson Stiven Santacruz';
  final subheading = 'Desarrollador Mobile';
  final cardImage = const NetworkImage(
      'https://th.bing.com/th/id/OIP.t9ik73RV-r3pMPE4g9k6YQHaFu?rs=1&pid=ImgDetMain');
  final supportingText = 'Proximo assetment...';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Card(
            elevation: 4.0,
            child: Column(
              children: [
                ListTile(
                  title: Text(heading),
                  subtitle: Text(subheading),
                  trailing: const Icon(Icons.favorite_outline),
                ),
                SizedBox(
                  height: 200.0,
                  child: Ink.image(
                    image: cardImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(supportingText),
                ),
                ButtonBar(
                  children: [
                    TextButton(
                      child: const Text('Ver detalles'),
                      onPressed: () =>
                          widget.creciConfig.creciUsecase.methodUseCase(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
