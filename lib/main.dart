import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// [findAncestorWidgetOfExactType]
    /// 現在のウィジェットから見て最も近い親方向にある、指定されたタイプTのウィジェットインスタンスを返す
    /// もし指定されたタイプのウィジェットが見つからなければ、nullを返す
    final materialApp = context.findAncestorWidgetOfExactType<MaterialApp>();
    print(materialApp); // MaterialApp

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
