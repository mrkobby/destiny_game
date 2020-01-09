import 'package:flutter/material.dart';
import 'story_brain.dart';

StoryBrain storyBrain = new StoryBrain();

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: DestiniPage(),
      ),
    ),
  );
}

class DestiniPage extends StatefulWidget {
  @override
  _DestiniPageState createState() => _DestiniPageState();
}

class _DestiniPageState extends State<DestiniPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storyBrain.getStory(),
                  style: TextStyle(fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  storyBrain.getChoiceOne(),
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(1);
                  });
                },
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: storyBrain.buttonShouldBeVisible(),
                child: FlatButton(
                  color: Colors.blue,
                  child: Text(
                    storyBrain.getChoiceTwo(),
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(2);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
