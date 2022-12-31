import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ChessBoard Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ChessBoardController chessBoardController = ChessBoardController();

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chessBoardController.addListener(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: ChessBoard(
          controller: chessBoardController,
          boardColor: BoardColor.green,
          boardOrientation: PlayerColor.white,
          onMove: (){},
          // arrows: [BoardArrow(from: 'b2', to: 'b3', color: Colors.red.withOpacity(0.8))],
        ),
      ),
    );
  }
}
