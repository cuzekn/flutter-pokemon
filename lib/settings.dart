import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        leading: const Icon(Icons.lightbulb),
        title: const Text('Dark/Light Mode'),
        onTap: () => {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ThemeModeSelectionPage(),
          )),
        },
      ),
    ]);
  }
}

class ThemeModeSelectionPage extends StatefulWidget {
  const ThemeModeSelectionPage({super.key});

  @override
  _ThemeModeSelectionPageState createState() => _ThemeModeSelectionPageState();
}

class _ThemeModeSelectionPageState extends State<ThemeModeSelectionPage> {
  ThemeMode _current = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.system,
              groupValue: _current,
              title: const Text('System'),
              onChanged: (val) => {},
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: _current,
              title: const Text('Dark'),
              onChanged: (val) => {setState(() => _current = val!)},
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.light,
              groupValue: _current,
              title: const Text('Light'),
              onChanged: (val) => {setState(() => _current = val!)},
            ),
          ],
        ),
      ),
    );
  }
}
