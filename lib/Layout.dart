import 'package:flutter/material.dart';

class PESULayout extends StatelessWidget {
  const PESULayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Centered horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // Centered vertically
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepPurple, // Updated border color
                    width: 3, // Updated border width
                  ),
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/pokemon-1.png',
                    fit: BoxFit.cover, // Updated fit
                  ),
                ),
              ),
              SizedBox(height: 10), // Space between image and button
              ElevatedButton(
                onPressed: () {},
                child: Text('Caterpie'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Updated button color
                  foregroundColor: Colors.white, // Button text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepPurple, // Updated border color
                    width: 3, // Updated border width
                  ),
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/pokemon-2.png',
                    fit: BoxFit.cover, // Updated fit
                  ),
                ),
              ),
              SizedBox(height: 10), // Space between image and button
              ElevatedButton(
                onPressed: () {},
                child: Text('Ivysaur'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Updated button color
                  foregroundColor: Colors.white, // Button text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepPurple, // Updated border color
                    width: 3, // Updated border width
                  ),
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/pokemon-3.png',
                    fit: BoxFit.cover, // Updated fit
                  ),
                ),
              ),
              SizedBox(height: 10), // Space between image and button
              ElevatedButton(
                onPressed: () {},
                child: Text('Flareon'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Updated button color
                  foregroundColor: Colors.white, // Button text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
