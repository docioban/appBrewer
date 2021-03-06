import 'package:destini/story.dart';

class story_brain {
  int indexQuestion = 0;

  List<Story> _storyData = [
    Story(
        text:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        text: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        text:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        text:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        text:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        text:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  String getChoice1() {
    return _storyData[indexQuestion].choice1;
  }

  String getChoice2() {
    return _storyData[indexQuestion].choice2;
  }

  String getText() {
    return _storyData[indexQuestion].text;
  }

  nextStory(int choice) {
    if (choice == 1) {
      if (indexQuestion == 0)
        indexQuestion = 2;
      else if (indexQuestion == 1)
        indexQuestion = 2;
      else if (indexQuestion == 2)
        indexQuestion = 5;
      else if (indexQuestion == 3)
        indexQuestion = 0;
      else if (indexQuestion == 4)
        indexQuestion = 0;
      else if (indexQuestion == 5) indexQuestion = 0;
    } else if (choice == 2) {
      if (indexQuestion == 0)
        indexQuestion = 1;
      else if (indexQuestion == 1)
        indexQuestion = 3;
      else if (indexQuestion == 2) indexQuestion = 4;
    }
  }

  bool isVisible() {
    if (indexQuestion >= 0 && indexQuestion < 3) {
      return true;
    } else {
      return false;
    }
  }
}
