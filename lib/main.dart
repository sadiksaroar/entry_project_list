import 'package:flutter/material.dart';

void main() {
  runApp(TimeTrackerApp());
}

class TimeTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AddTimeEntryScreen(),
    );
  }
}

class AddTimeEntryScreen extends StatefulWidget {
  @override
  _AddTimeEntryScreenState createState() => _AddTimeEntryScreenState();
}

class _AddTimeEntryScreenState extends State<AddTimeEntryScreen> {
  List<String> projects = [
    "Project A",
    "Project B",
    "Project C",
  ]; // Sample projects
  String? selectedProject; // Selected project from the dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Time Entry")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Project:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(border: OutlineInputBorder()),
              value: selectedProject,
              hint: Text("Choose a project"),
              items:
                  projects.map((String project) {
                    return DropdownMenuItem<String>(
                      value: project,
                      child: Text(project),
                    );
                  }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedProject = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
