import 'package:flutter/material.dart';
import 'package:tictactoe/screens/create_room_screen.dart';
import 'package:tictactoe/screens/join_room_screen.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/responsive/responsive.dart';
class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                onTap: () => createRoom(context),
                text: 'Creer une chambre'
            ),
            const SizedBox(height: 20,),
            CustomButton(
                onTap: () => joinRoom(context),
                text: 'Rejoindre une chambre'
            ),
          ],
        ),
      ),
    );
  }
}
