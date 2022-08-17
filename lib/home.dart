import 'package:flutter/material.dart';
import 'package:himalya/home/home_image_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final aboutText =
        "Himalaya College of Nursing and Allied Health Sciences Mardan is a private sector national college committed to meeting the needs and ambitions of a diverse range of students by providing challenging academic Nursing programs underpinned by international accredited qualifications, social diversity, academic excellence and entrepreneurial centered achievement.";
    return Scaffold(
      // backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: SafeArea(
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
                ImageSlider(),
                SizedBox(height: 15),
                Text(
                  'About Our Institute',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    aboutText,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(40, 12, 40, 12)),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Learn More'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 16, 97, 189),
                      ),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Apply Now'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 16, 97, 189),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Latest News & Events',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Card(
                  child: NewsEvents(
                    title: 'Admission Fall 2021',
                    subtitile: aboutText,
                    day: '29',
                    month: 'August',
                  ),
                  elevation: 10,
                ),
                Card(
                  child: NewsEvents(
                    title: 'Hera Visits HCN',
                    subtitile:
                        'Higher Education Regulatory Authority Visit HCN',
                    day: '23',
                    month: 'August',
                  ),
                  elevation: 10,
                ),
                Card(
                  child: NewsEvents(
                    title: 'Admission Advertisement',
                    subtitile:
                        'BSN & Post RN Degree Program, Fall Session 2021',
                    day: '10',
                    month: 'August',
                  ),
                  elevation: 10,
                )
              ],
            ),
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

class NewsEvents extends StatelessWidget {
  const NewsEvents({
    Key? key,
    required this.title,
    required this.subtitile,
    required this.day,
    required this.month,
  }) : super(key: key);

  final title, subtitile, day, month;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitile,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          leading: Container(
            color: Color.fromARGB(255, 12, 110, 190),
            width: 70,
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Column(
              children: [
                Text(
                  day,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(height: 08),
                Text(month,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
