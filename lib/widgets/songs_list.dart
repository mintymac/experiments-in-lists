import 'package:flutter/material.dart';

class SongsList extends StatelessWidget {
  final List<Map<String, dynamic>> songs;

  const SongsList({Key? key, required this.songs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: songs.map((song) {
          return ListTile(
            leading: Image.asset('assets/images/placeholder.png', width: 50, height: 50,
              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                return const Icon(Icons.error);  // return any widget when image loading failed
              },),
            title: Text(song['title']),
            subtitle: Text('Artist: ${song['artist']}'),
          );
        }).toList(),
      ),
    );
  }
}