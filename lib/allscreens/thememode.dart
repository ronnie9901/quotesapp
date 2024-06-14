import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeSwitcher extends StatelessWidget {
  const ThemeModeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(CupertinoIcons.back),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              themeProvider.toggleTheme();
            },
            title: Text('Dark mode'),
            leading: Icon(
              Icons.dark_mode,
            ),
          ),
          ListTile(
            onTap: () {
              themeProvider.toggleTheme();
            },
            title: Text('Light mode'),
            leading: Icon(
              Icons.light_mode,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/fav');
            },
            title: Text('favorites list'),
            leading: Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
    );
  }
}

class ThemeProvider extends ChangeNotifier {
  bool _isLightTheme = true;

  ThemeProvider() {
    _loadThemePreference();
  }

  bool get isLightTheme => _isLightTheme;

  void toggleTheme() {
    _isLightTheme = !_isLightTheme;
    _saveThemePreference();
    notifyListeners();
  }

  Future<void> _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    _isLightTheme = prefs.getBool('isLightTheme') ?? true;
    notifyListeners();
  }

  Future<void> _saveThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLightTheme', _isLightTheme);
  }
}
