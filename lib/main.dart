import 'package:flutter/material.dart';

void main() {
  runApp(const JobDetailApp());
}

class JobDetailApp extends StatelessWidget {
  const JobDetailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const JobDetailScreen(),
    );
  }
}

class JobDetailScreen extends StatelessWidget {
  final String jobTitle = 'Software Developer';
  final String jobDescription =
      'We are looking for a skilled software developer to join our team.';
  final String jobSalary = '\$5000 per month';
  final String jobPhoneNumber = '+1 234 567 890';
  final String jobWhatsAppNumber = '+1 234 567 890';
  final String jobImageUrl = 'https://via.placeholder.com/150';

  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    jobImageUrl,
                    height: 150.0,
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                jobTitle,
                style: const TextStyle(
                    fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    jobDescription,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading:
                      const Icon(Icons.monetization_on, color: Colors.green),
                  title: const Text(
                    'Salary',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(jobSalary),
                ),
              ),
              const SizedBox(height: 8.0),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.blue),
                  title: const Text(
                    'Phone',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(jobPhoneNumber),
                  trailing: IconButton(
                    icon: const Icon(Icons.call),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: const Icon(Icons.message, color: Colors.green),
                  title: const Text(
                    'WhatsApp',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(jobWhatsAppNumber),
                  trailing: IconButton(
                    icon: const Icon(Icons.message),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Added to favorites!')),
                    );
                  },
                  label: const Text('Add to Favorites'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
