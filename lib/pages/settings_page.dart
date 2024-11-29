import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Container(
        // Card-like styling for the settings option.
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Dark Mode label.
            const Text(
              "Dark Mode",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            // Toggle switch for Dark Mode.
            CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context)
                  .isDarkMode, // Current theme status.
              onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(), // Toggle theme.
            ),
          ],
        ),
      ),
    );
  }
}
