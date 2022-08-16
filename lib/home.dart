import 'package:flutter/material.dart';
import 'package:himalya/home_image_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                // color: Colors.red,
                height: 80,
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/himalya.jpeg'),
                      ),
                      title: Text(
                        'Himalya College of Nursing',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return GestureDetector(
                                child: Center(
                                  child: Hero(
                                      tag: 'imageHero',
                                      child:
                                          Image.asset('assets/himalya.jpeg')),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              );
                            },
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                // color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Button(text: 'Home'),
                    SizedBox(width: 12),
                    Button(text: 'Messages'),
                    SizedBox(width: 12),
                    Button(text: 'Academics'),
                    SizedBox(width: 12),
                    Button(text: 'Admissions'),
                    SizedBox(width: 12),
                    Button(text: 'Fee Structures'),
                    SizedBox(width: 12),
                    Button(text: 'Policies'),
                    SizedBox(width: 12),
                    Button(text: 'About Us'),
                  ],
                ),
              ),
              SizedBox(height: 15),
              ImageSlider()
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key, required this.text}) : super(key: key);
  final text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}
