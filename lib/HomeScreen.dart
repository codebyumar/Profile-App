// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile App',
          style: GoogleFonts.cabin(),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red], // Adjust the colors as needed
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final Color headingColor = Color(0xff764abc);

  final Uri linkedinUrl =
      Uri.parse('https://www.linkedin.com/in/malik-umar-7180492b1/');
  final Uri instagramUrl = Uri.parse('https://www.instagram.com/codebyumar_/');
  final Uri githubUrl = Uri.parse('https://github.com/codebyumar');

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const CircleAvatar(
              radius: 80, backgroundImage: AssetImage('assets/np.png')),
          const SizedBox(height: 20),
          Text(
            'Muhammad Umar',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ) ??
                TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Creating seamless experiences with Flutter',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.red
                ], // Change these colors as needed
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 4),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.cake_sharp, color: Colors.white),
                  title: Text(
                    'Birth Date',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '27-04-2006',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.web, color: Colors.white),
                  title: Text(
                    'LinkedIn',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Malik Umar.',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email, color: Colors.white),
                  title: Text(
                    'Email',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'codebyumar7@gmail.com',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.white),
                  title: Text(
                    'Address',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Sargodha, Pakistan',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            children: <Widget>[
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  _launchUrl(linkedinUrl);
                },
                color: Colors.blue,
                tooltip: 'LinkedIn',
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  _launchUrl(instagramUrl);
                },
                color: Colors.pink,
                tooltip: 'Instagram',
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  _launchUrl(githubUrl);
                },
                color: Colors.black,
                tooltip: 'GitHub',
              ),
            ],
          )
        ],
      ),
    );
  }
}
