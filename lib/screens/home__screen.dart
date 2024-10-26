import 'package:flutter/material.dart';
import 'package:gcr/screens/join_class.dart';
import 'package:gcr/screens/todos_screen.dart';
import 'package:gcr/widgets/classrooms.dart';
import 'package:gcr/widgets/main_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        child: Center(
          child: IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JoinClass(),
                          ),
                        );
                      },
                      child: const Text("Join Class"),
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.add),
          ),
        ),
      ),
      drawer: const MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: Container(
            color: Colors.grey,
            height: 4.0,
          ),
        ),
        title: Text.rich(
          TextSpan(
            text: "Google",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: const Color.fromARGB(255, 90, 87, 87),
                  fontWeight: FontWeight.bold,
                ),
            children: [
              TextSpan(
                text: ' Classroom',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 90, 87, 87),
                    ),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blueAccent),
                child: Center(
                  child: Text(
                    'S',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.9,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "This week",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const TodosScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "View to-do list",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "0",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(width: 7),
                        Text(
                          "assigned",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "1",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(width: 7),
                        Text(
                          "missed",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              const Classrooms(),
            ],
          ),
        ),
      ),
    );
  }
}
