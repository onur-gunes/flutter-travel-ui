import 'package:flutter/material.dart';
import 'package:flutter_travel_app/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {

  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Hero(
          tag: widget.destination.imageUrl,
          child: Image(
            image: AssetImage(widget.destination.imageUrl),
          ),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 40
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.black,
              onPressed: () => Navigator.pop(context),
            ),
          )
    ],
      ),

    );
  }
}
