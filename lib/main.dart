import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import './animator_group.dart';
import './sliding_entrances.dart';



void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<AnimatorGroupState> _key = GlobalKey<AnimatorGroupState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ghgh'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: renderAnimation(),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Transform.rotate(
                  angle: pi,
                  child: IconButton(
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.green,
                    ),
                    onPressed: () => _key.currentState.reverse(),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.stop,
                    color: Colors.red,
                  ),
                  onPressed: () => _key.currentState.stop(),
                ),
                IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.green,
                  ),
                  onPressed: () => _key.currentState.forward(),
                ),
                IconButton(
                  icon: Icon(
                    Icons.repeat,
                    color: Colors.orange,
                  ),
                  onPressed: () => _key.currentState.loop(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget renderAnimation() {
//    switch (_type) {
//      case AnimationGroupType.AttentionSeekers:
//        return AttentionSeekers(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.BouncingEntrances:
//        return BouncingEntrances(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.BouncingExits:
//        return BouncingExits(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.FadingEntrances:
//        return FadingEntrances(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.FadingExits:
//        return FadingExits(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.Flippers:
//        return Flippers(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.LightSpeed:
//        return LightSpeed(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.RotatingEntrances:
//        return RotatingEntrances(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.RotatingExits:
//        return RotatingExits(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.SlidingEntrances:
//        return SlidingEntrances(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.SlidingExits:
//        return SlidingExits(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.SlitEntrances:
//        return SlitEntrances(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.SlitExits:
//        return SlitExits(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.Specials:
//        return Specials(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.ZoomingEntrances:
//        return ZoomingEntrances(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//      case AnimationGroupType.ZoomingExits:
//        return ZoomingExits(
//          key: _key,
//          playState: AnimationPlayStates.Forward,
//        );
//    }
    return  SlidingEntrances(
      key: _key,
      playState: AnimationPlayStates.Forward,
    );
  }
}
