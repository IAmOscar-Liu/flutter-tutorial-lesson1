import 'dart:developer';
import 'package:flutter/material.dart';

class MyTestForm extends StatefulWidget {
  const MyTestForm({super.key});

  @override
  State<MyTestForm> createState() => _MyTestFormState();
}

class _MyTestFormState extends State<MyTestForm> {
  final TextEditingController _controller = TextEditingController();
  String buttonText = "Show text";

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Column(children: [
      TextFormField(
          // initialValue: "",
          enabled: false,
          controller: _controller,
          decoration: const InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'What do people call you?',
            labelText: 'Name *',
          )),
      const SizedBox(height: 5),
      ElevatedButton(
          onPressed: () {
            log(_controller.text);
            // _controller.text = "Happy new year";
            if (_controller.text.isEmpty) {
              _controller.text = "Happy new year";
              setState(() {
                buttonText = "Hide text";
              });
            } else {
              _controller.text = "";
              setState(() {
                buttonText = "Show text";
              });
            }
          },
          style: style,
          child: Text(buttonText))
    ]);
  }
}
