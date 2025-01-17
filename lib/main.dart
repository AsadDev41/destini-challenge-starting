import 'package:destini_challenge_starting/story_brain.dart';
import 'package:flutter/material.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storyBrain.getStory(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(1);
                  });
                },
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: Text(
                  storyBrain.getchoice1(),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(2);
                  });
                },
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                child: Text(
                  storyBrain.getchoice2(),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
