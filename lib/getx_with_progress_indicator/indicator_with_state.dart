import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool _isLoading = false; //bool variable created

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () async {
            setState(() {
              _isLoading = true;
            });
            await Future.delayed(const Duration(seconds: 5));

            setState(() {
              _isLoading = false;
            });
          },
          child: const Text("Click to start fetching"),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(50),
          margin: const EdgeInsets.all(50),
          color: Colors.blue[100],
          child: Center(
            child: !_isLoading
                ? const Text("Loading Complete")
                : const CircularProgressIndicator(),
          ),
        )
      ],
    ));
  }
}
