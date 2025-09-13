import 'package:flutter/material.dart';

class NoteAItem extends StatelessWidget {
  const NoteAItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 18),
              child: Text(
                'Build Your Career With Amr Hamdan',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, size: 31),
              color: Colors.black,
            ),
          ),
          Text(
            'sept13 , 2025',
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
