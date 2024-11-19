import 'package:blog_app/pages/add_blog.dart';
import 'package:blog_app/pages/profile_blog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Tambahkan variabel untuk melacak tab aktif

  List<Content> content = [
    Content(
      nama: 'Fahri',
      title: 'Lorem Ipsum',
      image: 'images/foto.jpg',
    ),
    Content(
      nama: 'Fahri',
      title: 'Lorem Ipsum',
      image: 'images/foto.jpg',
    ),
    Content(
      nama: 'Fahri',
      title: 'Lorem Ipsum',
      image: 'images/foto.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Blog App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.download,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: content.length,
          itemBuilder: (BuildContext context, int index) {
            final contentItem = content[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(contentItem.image),
                          radius: 20,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          contentItem.nama,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      contentItem.title,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Image.asset(
                        'images/foto.jpg',
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    ),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                          ),
                          Container(
                            height: 10,
                            width: 2,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddBlog(),
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Gunakan variabel untuk melacak tab aktif
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Perbarui indeks tab aktif
          });

          // Navigasi berdasarkan indeks
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileBlog(),
              ),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class Content {
  String nama;
  String title;
  String image;

  Content({required this.nama, required this.title, required this.image});
}
