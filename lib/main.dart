import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation Text',
      home: AnumationTextPage(),
    );
  }
}

class AnumationTextPage extends StatefulWidget {
  const AnumationTextPage({Key? key}) : super(key: key);

  @override
  State<AnumationTextPage> createState() => _AnumationTextPageState();
}

class _AnumationTextPageState extends State<AnumationTextPage> {
  static const clourText = [
    Colors.purple,
    Colors.blueAccent,
    Colors.yellow,
    Colors.redAccent
  ];

  static const colorTextStyle =
      TextStyle(fontSize: 50.0, fontStyle: FontStyle.italic);

  static const List<Tab> _tabs = [
    Tab(child: Text('Rotate')),
    Tab(child: Text('Fade')),
    Tab(child: Text('Typer')),
    Tab(child: Text('Typewriter')),
    Tab(child: Text('Scale')),
    Tab(child: Text('Colorize')),
    Tab(child: Text('TextLiquidFill')),
    Tab(child: Text('Wavy')),
    Tab(child: Text('Flicker')),
  ];
  static List<Widget> _views = [
    ///RotateAnimatedText
    Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 20.0, height: 100.0),
          const Text('Hello', style: TextStyle(fontSize: 45.0)),
          const SizedBox(width: 20.0, height: 100.0),
          DefaultTextStyle(
            style: const TextStyle(fontSize: 40.0, fontStyle: FontStyle.italic),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('World'),
                RotateAnimatedText('Welcome'),
              ],
              onTap: () {
                print('OnTap');
              },
            ),
          )
        ],
      ),
    ),
    ///FadeAnimatedText
    Center(
      child: SizedBox(
        width: 200.0,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText('Just'),
              FadeAnimatedText('Do'),
              FadeAnimatedText('It!!!')
            ],
          ),
        ),
      ),
    ),
    ///TyperAnimatedText
    Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('It is not easy'),
              TyperAnimatedText('But it can')
            ],
          ),
        ),
      ),
    ),
    ///TypewriterAnimatedText
    Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Keep going'),
              TypewriterAnimatedText('Nothing to warry')
            ],
          ),
        ),
      ),
    ),
    ///ScaleAnimatedText
    Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          child: AnimatedTextKit(
            animatedTexts: [
              ScaleAnimatedText('Just Start it'),
              ScaleAnimatedText('You can Do it')
            ],
          ),
        ),
      ),
    ),
    ///ColorizeAnimatedText
    Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText('Dream Big',
                  textStyle: colorTextStyle, colors: clourText)
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print('on Tap');
            },
          ),
        ),
      ),
    ),
    ///TextLiquidFill
    Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          child: TextLiquidFill(
            text: 'Keep Happy',
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Colors.red,
            textStyle: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
    ///WavyAnimatedText
    Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Try and Try'),
              WavyAnimatedText('One day you can Fly')
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print('on Tap');
            },
          ),
        ),
      ),
    ),
    ///FlickerAnimatedText
    Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style:
              TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic, shadows: [
            Shadow(blurRadius: 7.0, color: Colors.white, offset: Offset(0, 0))
          ]),
          child: AnimatedTextKit(
            animatedTexts: [
              FlickerAnimatedText('Lean'),
              FlickerAnimatedText('Every Day'),
              FlickerAnimatedText('From'),
              FlickerAnimatedText('Every One'),
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print('on Tap');
            },
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: const Text('Animation Text'),
          backgroundColor: Colors.green,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),
            overlayColor:
                MaterialStateColor.resolveWith((Set<MaterialState> state) {
              if (state.contains(MaterialState.pressed)) {
                return Colors.blueAccent;
              }

              if (state.contains(MaterialState.focused)) {
                return Colors.orange;
              } else if (state.contains(MaterialState.hovered)) {
                return Colors.blueAccent;
              }

              return Colors.transparent;
            }),
            indicatorWeight: 5,
            indicatorColor: Colors.amberAccent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.all(5),
            isScrollable: true,
            physics: const BouncingScrollPhysics(),
            onTap: (int index) {
              print('Tab $index you Tapped');
            },
            enableFeedback: true,
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: _views,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
