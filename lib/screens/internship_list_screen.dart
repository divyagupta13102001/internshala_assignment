import 'package:flutter/material.dart';
import 'package:internshala_assignment/widgets/opening.dart';

class InternsgipScreen extends StatefulWidget {
  const InternsgipScreen({super.key});

  @override
  State<InternsgipScreen> createState() => _InternsgipScreenState();
}

class _InternsgipScreenState extends State<InternsgipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internships'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search_outlined),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.save_as_rounded),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.message_outlined),
          )
        ],
      ),
      body: OpeningsList(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, // Set the background color of the BottomAppBar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Tooltip(
              message: 'Home',
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.black54,
                ),
                onPressed: () {
                  // Handle Home button tap
                },
              ),
            ),
            Tooltip(
              message: 'Internships',
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                onPressed: () {
                  // Handle Internships button tap
                },
              ),
            ),
            Tooltip(
              message: 'Jobs',
              child: IconButton(
                icon: Icon(
                  Icons.work,
                  color: Colors.black54,
                ),
                onPressed: () {
                  // Handle Jobs button tap
                },
              ),
            ),
            Tooltip(
              message: 'Clubs',
              child: IconButton(
                icon: Icon(
                  Icons.people,
                  color: Colors.black54,
                ),
                onPressed: () {
                  // Handle Clubs button tap
                },
              ),
            ),
            Tooltip(
              message: 'Courses',
              child: IconButton(
                icon: Icon(
                  Icons.school,
                  color: Colors.black54,
                ),
                onPressed: () {
                  // Handle Courses button tap
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
