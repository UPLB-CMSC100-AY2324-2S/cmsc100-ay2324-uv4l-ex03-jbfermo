import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InstagramProfile(),
      ),
    );
  }
}

class InstagramProfile extends StatelessWidget {
  final List<String> posts = [
    'assets/post1.jpg',
    'assets/post2.jpg',
    'assets/post3.jpg',
    'assets/post4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.purple,
          padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0, right: 8.0), // Adjust right padding
          child: Row(
            children: [
              Text(
                '@jbfermo',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.transparent,
              ),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jesella B. Fermo',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 64.0), // Add space between Username and Add bio
                      Text(
                        'Add bio',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0), // Add space between Username/Add bio and engagement details
                  Text(
                    '${posts.length} posts 10 followers 10 following',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.grey[400],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.grid_on),
                  onPressed: () {
                    // Handle posts icon press
                  },
                ),
                Text('#posts'),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.movie),
                  onPressed: () {
                    // Handle reels icon press
                  },
                ),
                Text('reels'),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.bookmark),
                  onPressed: () {
                    // Handle bookmark icon press
                  },
                ),
                Text('saved'),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.tag_faces),
                  onPressed: () {
                    // Handle tagged icon press
                  },
                ),
                Text('tagged'),
              ],
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 24.0,
            child: IconButton(
              icon: Icon(Icons.add),
              color: Colors.white,
              onPressed: () {
                // Handle add reels button press
              },
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(
              posts.length,
              (index) {
                return Image.asset(
                  posts[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

