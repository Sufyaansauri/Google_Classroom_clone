import 'package:flutter/material.dart';

class ClassroomItemScreen2 extends StatefulWidget {
  const ClassroomItemScreen2({super.key});

  @override
  State<ClassroomItemScreen2> createState() => _ClassroomItemScreen2State();
}

class _ClassroomItemScreen2State extends State<ClassroomItemScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Class Comments',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      body: Column(
        children: [
          const Spacer(),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Class comment'),
            autofocus: true,
          ),
        ],
      ),
    );
  }
}
