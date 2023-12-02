import 'package:flutter/material.dart';

class Pigdogs extends StatelessWidget {
  // List of hardcoded friend names
  final List<String> friends = [
    'Alex Johnson',
    'Emily Davis',
    'Michael Brown',
    'Sarah Wilson',
    'David Smith',
    'Jessica Miller',
    'Daniel Taylor',
    'Laura Moore',
    'James White',
    'Sophia Harris',
    'John Martin',
    'Olivia Thompson',
    'Chris Garcia',
    'Anna Martinez',
    'Ryan Hernandez',
    'Isabella Clark',
    'Brandon Lee',
    'Amelia Young',
    'Justin Anderson',
    'Chloe Lewis'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Friends'),
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(friends[index]),
          );
        },
      ),
    );
  }
}
