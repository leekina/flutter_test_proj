import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesTest extends StatefulWidget {
  const PreferencesTest({super.key});

  @override
  State<PreferencesTest> createState() => _PreferencesTestState();
}

class _PreferencesTestState extends State<PreferencesTest> {
  // String? id = '';
  void setUser() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("id", "leemh332");
  }

  Future<String?> getUser() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String? id = pref.getString("id");
    print(id);
    return id;
  }

  @override
  void initState() {
    super.initState();
    setUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("preference Test"),
      ),
      body: SafeArea(
        child: Container(
          child: FutureBuilder(
            future: getUser(),
            builder: (context, snapshot) {
              if (snapshot.data != null) {
                return Center(
                  child: Text(snapshot.data!),
                );
              } else {
                return Center(
                  child: Text("No id"),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
