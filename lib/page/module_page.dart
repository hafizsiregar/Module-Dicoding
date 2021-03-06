import 'package:flutter/material.dart';
import 'package:setstate/module/module.dart';

import 'done_module_list.dart';

class ModulePage extends StatefulWidget {
  @override
  _ModulePageState createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {

  final List<String> doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoneModuleList(doneModuleList: doneModuleList),
                ),
              );
            },
          ),
        ],
      ),
      body: ModuleList(doneModuleList: doneModuleList),
    );
  }
}
