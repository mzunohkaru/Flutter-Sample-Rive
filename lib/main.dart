import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

void main() => runApp(MaterialApp(
      home: MyRiveAnimation(),
    ));

class MyRiveAnimation extends StatefulWidget {
  MyRiveAnimation({super.key});

  @override
  State<MyRiveAnimation> createState() => _MyRiveAnimationState();
}

class _MyRiveAnimationState extends State<MyRiveAnimation> {
  // デフォルト
  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine',
    );
    artboard.addController(controller!);
  }

  /// いいね
  // SMIInput<bool>? _isMouseClick;
  // SMIInput<bool>? _isMouseOut;
  // SMIInput<bool>? _isMouseOver;

  /// RiveAnimationの初期化 Widget build時に呼ばれる
  // void _onRiveInit(Artboard artboard) {
  //   final controller = StateMachineController.fromArtboard(
  //     artboard,
  //     'State Machine 1', // RiveEditorの(Animations欄) StateMachine名
  //   );
  //   artboard.addController(controller!);
  //   // RiveEditorの(Inputs欄) ※Attention:初期値はnullなので注意が必要
  //   _isMouseClick = controller.findInput<bool>('mouse-click') as SMIBool;
  //   _isMouseOut = controller.findInput<bool>('mouse-out') as SMIBool;
  //   _isMouseOver = controller.findInput<bool>('mouse-over') as SMIBool;
  // }

  /// ホバー
  // SMIInput<bool>? _isHover;
  // void _onRiveInit(Artboard artboard) {
  //   final controller = StateMachineController.fromArtboard(
  //     artboard,
  //     'State Machine 1',
  //   );
  //   artboard.addController(controller!);
  //   _isHover = controller.findInput<bool>('Hover') as SMIBool;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // デフォルト
        child: RiveAnimation.asset(
          'assets/untitled.riv',
        ),

        /// いいね
        // child: SizedBox(
        //   width: 100,
        //   height: 100,
        //   child: GestureDetector(
        //     onTap: () {
        //       _isMouseClick?.value = true;
        //       print("DEBUG: Good");
        //     },
        //     child: RiveAnimation.asset(
        //       'assets/Twitter_Like_with_Audio.riv',
        //       fit: BoxFit.cover,
        //       onInit: _onRiveInit,
        //       stateMachines: ['State Machine 1'],
        //     ),
        //   ),
        // ),
        /// ホバー
        // child: Stack(
        //   children: [
        //     RiveAnimation.asset(
        //       'assets/Little-Boy.riv',
        //       fit: BoxFit.cover,
        //       onInit: _onRiveInit,
        //       stateMachines: ['State Machine 1'],
        //     ),

        //     Align(
        //       alignment: Alignment.center,
        //       child: const Text(
        //         '会員登録',
        //         style: TextStyle(fontSize: 90, color: Colors.white),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
