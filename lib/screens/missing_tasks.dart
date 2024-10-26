import 'package:flutter/material.dart';
import 'package:gcr/widgets/assigned_task_items.dart';

class MissedTasks extends StatefulWidget {
  const MissedTasks({super.key});

  @override
  State<MissedTasks> createState() => _MissedTasksState();
}

class _MissedTasksState extends State<MissedTasks> {
  bool areTaskVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      "This week",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      "0",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: const Color.fromARGB(255, 38, 35, 133),
                          ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'Last week',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 38, 35, 133)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  areTaskVisible = !areTaskVisible;
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'Earlier',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      '4',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 38, 35, 133)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      areTaskVisible
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
            if(areTaskVisible) const AssignedTaskItems(),
          ],
        ),
      ),
    );
  }
}
