import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/custom_text.dart';
import 'package:tictactoe/widgets/custom_text_field.dart';
import 'package:tictactoe/responsive/responsive.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _gameIdController.dispose();
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                  shadows: [
                    Shadow(
                      blurRadius: 40,
                      color: Colors.blue,
                    )
                  ],
                  text: 'Rejoindre la chambre',
                  fontSize: 70
              ),
              SizedBox(height: size.height*0.08,),
              CustomTextField(controller: _nameController, hintText: 'Entrez votre surnom'),
              const SizedBox(height: 20,),
              CustomTextField(controller: _gameIdController, hintText: 'Entrez l\'id du jeu'),
              SizedBox(height: size.height*0.045,),
              CustomButton(onTap: () {}, text: 'Creer')
            ],
          ),
        ),
      ),
    );
  }
}
