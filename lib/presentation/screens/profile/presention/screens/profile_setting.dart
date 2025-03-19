import 'package:flutter/material.dart';

import '../../data/models/textfield.dart';

class ProfileApp extends StatefulWidget {
  const ProfileApp({super.key});
  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  final controllers = List.generate(4, (_) => TextEditingController());
  String? selectedGender;

  @override
  void dispose() {
    for (var c in controllers) c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black), onPressed: () { Navigator.pop(context);}),
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text("Profile Setting", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(radius: 50, backgroundColor: Colors.pink[100], backgroundImage: const AssetImage('assets/images/profile.jpg')),
                CircleAvatar(
                  radius: 16, backgroundColor: Colors.black,
                  child: IconButton(icon: const Icon(Icons.camera_alt, size: 16, color: Colors.white), onPressed: () {}),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: textfield("First Name", controllers[0])),
                const SizedBox(width: 16),
                Expanded(child: textfield("Last Name", controllers[1])),
              ],
            ),
            textfield("Email", controllers[2], TextInputType.emailAddress),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedGender,
                    decoration: const InputDecoration(labelText: "Gender"),
                    items: ["Male", "Female"].map((g) => DropdownMenuItem(value: g, child: Text(g))).toList(),
                    onChanged: (v) => setState(() => selectedGender = v),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(child: textfield("Phone", controllers[3], TextInputType.phone)),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {},
                child: const Text("Save Changes", style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
