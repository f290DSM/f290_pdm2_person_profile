import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final url =
      'https://images.pexels.com/photos/10803285/pexels-photo-10803285.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ricieri Prifile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Person Profile',
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView(children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Ricieri Silva',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 3,
                      indent: 32,
                      endIndent: 32,
                      color: Colors.blueGrey,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... ',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.pink,
                ),
              ]),
            ),
            Expanded(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(FontAwesomeIcons.instagram),
                    title: Text('Ricieri Silva'),
                    subtitle: Text('ricieri@gmail.com'),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const FaIcon(FontAwesomeIcons.linkedinIn),
        ),
      ),
    );
  }
}
