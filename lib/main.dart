import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_22/pages/page_one.dart';
import 'package:flutter_application_22/pages/page_setting.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: const Center(
        child: Text('Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.red,
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Menu",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                size: 35,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const PageOne(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 35,
              ),
              title: const Text(
                'Setting',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const PageSetting(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
