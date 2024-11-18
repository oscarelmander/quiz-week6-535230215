import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: themeProvider.fontStyle.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Theme:',
              style: themeProvider.fontStyle
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => themeProvider.changeTheme(0),
                  child: Text(
                    'Theme A',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.changeTheme(1),
                  child: Text(
                    'Theme B',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.changeTheme(2),
                  child: Text(
                    'Theme C',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.changeTheme(3),
                  child: Text(
                    'Theme D',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.changeTheme(4),
                  child: Text(
                    'Theme E',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Choose Font:',
              style: themeProvider.fontStyle
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => themeProvider.changeFont(0),
                  child: Text(
                    'Font A',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.changeFont(1),
                  child: Text(
                    'Font B',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.changeFont(2),
                  child: Text(
                    'Font C',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.changeFont(3),
                  child: Text(
                    'Font D',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.changeFont(4),
                  child: Text(
                    'Font E',
                    style: themeProvider.fontStyle.copyWith(fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
