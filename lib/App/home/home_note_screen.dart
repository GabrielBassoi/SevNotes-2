import 'package:flutter/material.dart';
import 'package:sevnotes2/App/EditNote/edit_note.dart';

import 'widgets/bar/bar.dart';
import 'widgets/bar/tab_view.dart';
import 'widgets/bar/tool_bar.dart';

class HomeNoteScreen extends StatefulWidget {
  @override
  _HomeNoteScreenState createState() => _HomeNoteScreenState();
}

class _HomeNoteScreenState extends State<HomeNoteScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                ToolBar(),
                SizedBox(height: 20),
                BarTab(tabController)
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: Scaffold(
                body: TabView(tabController),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.grey,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => EditNote()));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
