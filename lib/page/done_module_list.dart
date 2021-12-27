import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setstate/module/done_module_provider.dart';

class DoneModuleList extends StatelessWidget {
  DoneModuleList({required this.doneModuleList});

  final List<String> doneModuleList;

  @override
  Widget build(BuildContext context) {

    final doneModuleList = Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;

    return Scaffold(
      appBar: AppBar(
        title: Text('Done Module List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(doneModuleList[index]),
          );
        },
        itemCount: doneModuleList.length,
      ),
    );
  }
}