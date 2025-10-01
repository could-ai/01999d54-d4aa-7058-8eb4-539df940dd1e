import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient Care App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primaryColor: Colors.blue[800],
        scaffoldBackgroundColor: Colors.grey[100],
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black54),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[800],
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<InstructionCategory> instructionCategories = [
      InstructionCategory(
        title: "Medication Guide",
        icon: Icons.medical_services,
      ),
      InstructionCategory(
        title: "Dietary Recommendations",
        icon: Icons.restaurant_menu,
      ),
      InstructionCategory(
        title: "Wound Care",
        icon: Icons.healing,
      ),
      InstructionCategory(
        title: "Activity Restrictions",
        icon: Icons.accessibility_new,
      ),
      InstructionCategory(
        title: "Emergency Contacts",
        icon: Icons.contact_phone,
      ),
      InstructionCategory(
        title: "Follow-up Appointments",
        icon: Icons.calendar_today,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Facial Trauma Care"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: instructionCategories.length,
          itemBuilder: (context, index) {
            final category = instructionCategories[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              child: ListTile(
                leading: Icon(category.icon, color: Theme.of(context).primaryColor),
                title: Text(category.title, style: const TextStyle(fontWeight: FontWeight.w500)),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // TODO: Navigate to the detail screen for this category
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class InstructionCategory {
  final String title;
  final IconData icon;

  InstructionCategory({required this.title, required this.icon});
}
