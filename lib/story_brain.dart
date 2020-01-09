import 'story.dart';

class StoryBrain {
  int storyNumber = 0;

  List<Story> _storyList = [
    Story(
        storyText:
            'Story 0 \n Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        answerChoiceOne: 'I\'ll hop in. Thanks for the help!',
        answerChoiceTwo: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyText: 'Story 1 \n He nods slowly, unphased by the question.',
        answerChoiceOne: 'At least he\'s honest. I\'ll climb in.',
        answerChoiceTwo: 'Wait, I know how to change a tire.'),
    Story(
        storyText:
            'Story 2 \n As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        answerChoiceOne: 'I love Elton John! Hand him the cassette tape.',
        answerChoiceTwo: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyText:
            'Story 3 \n What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        answerChoiceOne: 'Restart',
        answerChoiceTwo: ''),
    Story(
        storyText:
            'Story 4 \n As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        answerChoiceOne: 'Restart',
        answerChoiceTwo: ''),
    Story(
        storyText:
            'Story 5 \n You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        answerChoiceOne: 'Restart',
        answerChoiceTwo: '')
  ];

  String getStory() {
    return _storyList[storyNumber].storyText;
  }

  String getChoiceOne() {
    return _storyList[storyNumber].answerChoiceOne;
  }

  String getChoiceTwo() {
    return _storyList[storyNumber].answerChoiceTwo;
  }

  void nextStory(int choiceIndex) {
    if (choiceIndex == 1) {
      if (storyNumber == 0 || storyNumber == 1) {
        storyNumber = 2;
      }else if (storyNumber == 2) {
        storyNumber = 5;
      } else {
        restart();
      }
    } else if (choiceIndex == 2) {
      if (storyNumber == 0) {
        storyNumber = 1;
      } else if (storyNumber == 1) {
        storyNumber = 3;
      } else if (storyNumber == 2) {
        storyNumber = 4;
      } else {
        restart();
      }
    }
  }

  void restart() {
    storyNumber = 0;
  }

  bool buttonShouldBeVisible(){
    if(storyNumber == 3 || storyNumber == 4 || storyNumber == 5){
      return false;
    }else{
      return true;
    }
  }
}
