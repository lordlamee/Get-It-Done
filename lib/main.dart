import 'package:flutter/material.dart';
import 'package:getitdone/screens/To_do_screen.dart';
import 'package:getitdone/task_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(GetItDone());
}

class GetItDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoScreen(),
      ),
    );
  }
}
