import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   /// BuildContext = Elementというクラス
//   @override
//   Widget build(BuildContext context) {
//     /// [findAncestorWidgetOfExactType]
//     /// 現在のウィジェットから見て最も近い親方向にある、指定されたタイプTのウィジェットインスタンスを返す
//     /// もし指定されたタイプのウィジェットが見つからなければ、nullを返す
//     final materialApp = context.findAncestorWidgetOfExactType<MaterialApp>();
//     print(materialApp); // MaterialApp
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: const Center(
//         child: Text('Home Screen'),
//       ),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key}) {
    debugPrint('HomeScreen constructor');
  }

  @override
  State createState() => _HomeScreenState();
}

/// このwidgetのボタンをタップすると、HomeScreenのカウンター（state）が増える
/// 同時にCounterButtonウィジェットも呼ばれるが、このウィジェットのカウンター（state）は増えない
/// このことから、StateのライフサイクルがWidgetのライフサイクルよりも長いことが分かる
class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('CounterButton build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Home Screen Count: ($_counter)'),
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
            ),
            CounterButton(),
          ],
        ),
      ),
    );
  }
}

class CounterButton extends StatefulWidget {
  CounterButton({super.key}) {
    debugPrint('CounterButton constructor');
  }

  @override
  State createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('CounterButton build');
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _counter++;
        });
      },
      child: Text('Counter Button Count: ($_counter)'),
    );
  }
}
