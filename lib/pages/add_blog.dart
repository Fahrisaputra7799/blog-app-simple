import 'package:flutter/material.dart';

class AddBlog extends StatefulWidget {
  const AddBlog({super.key});

  @override
  State<AddBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Add Blog',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            // aksi
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 160,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera,
                    size: 130,
                    color: Colors.white,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Deskripsi'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Postingan di tambahkan'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(
                  'Tambahkan',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
