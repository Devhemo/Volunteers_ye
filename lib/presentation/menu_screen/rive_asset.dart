import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;

  RiveAsset(this.src,
      {required this.artboard,
      required this.stateMachineName,
      required this.title,
      this.input});

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> menuscreen = [
  RiveAsset("assets/Icons/icons.riv",
      artboard: "HOME", stateMachineName: "HOME_interactivity", title: "Home"),
  RiveAsset("assets/Icons/icons.riv",
      artboard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
      title: "Search"),
  RiveAsset("assets/Icons/icons.riv",
      artboard: "SETTINGS",
      stateMachineName: "SETTINGS_Interactivity",
      title: "Settings"),
  RiveAsset("assets/Icons/icons.riv",
      artboard: "USER",
      stateMachineName: "USER_Interactivity",
      title: "Singup"),
  RiveAsset("assets/Icons/icons.riv",
      artboard: "CHAT", stateMachineName: "CHAT_Interactivity", title: "Help"),
];
List<RiveAsset> menuscreen2 = [
  RiveAsset("assets/Icons/icons.riv",
      artboard: "TIMER",
      stateMachineName: "TIMER_Interactivity",
      title: "History"),
  RiveAsset("assets/Icons/icons.riv",
      artboard: "BELL",
      stateMachineName: "BELL_Interactivity",
      title: "Notifications"),
];
