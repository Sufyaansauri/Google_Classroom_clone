import 'package:flutter/material.dart';
import 'package:gcr/screens/assigned_tasks.dart';
import 'package:gcr/screens/done_tasks.dart';
import 'package:gcr/screens/missing_tasks.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: const [
              Icon(Icons.more_vert_rounded),
            ],
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
            title: const Text("To do"),
            bottom: TabBar(
              indicatorColor: const Color.fromARGB(255, 38, 35, 133),
              labelColor: const Color.fromARGB(255, 38, 35, 133),
              labelStyle: Theme.of(context).textTheme.titleMedium,
              tabs: const [
                Tab(text: 'Assigned'),
                Tab(text: 'Missing'),
                Tab(text: 'Done'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
               AssignedTasks(),
              MissedTasks(),
              DoneTasks(),
            ],
          ),
        ),
      ),
    );
  }
}
