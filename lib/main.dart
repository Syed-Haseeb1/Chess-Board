// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(ChessBoardApp());
}

class ChessBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Board',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chess Board'),
        ),
        body: Center(
          child: ChessBoard(),
        ),
      ),
    );
  }
}

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8, // 8 columns for the chess board
      ),
      itemCount: 64, // 8 * 8 squares
      itemBuilder: (context, index) {
        // Determine the row and column based on the index
        int row = index ~/ 8;
        int column = index % 8;

        // Use a checkerboard pattern for colors
        Color color = (row + column) % 2 == 0 ? Colors.white : Colors.black;

        return Container(
          color: color,
          child: Center(
            child: Text(
              '', // You can put piece initials here if needed
              style: TextStyle(color: color == Colors.white ? Colors.black : Colors.white),
            ),
          ),
        );
      },
    );
  }
}
