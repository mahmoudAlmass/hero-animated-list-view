import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challange_animated_list_view/card_row.dart';
import 'package:flutter_challange_animated_list_view/data_source.dart';

class SliverListScreen extends StatefulWidget {
  @override
  _SliverListScreenState createState() => _SliverListScreenState();
}

class _SliverListScreenState extends State<SliverListScreen> {
  final InitData _dataSource = InitData();
  late ScrollController _scrollController;

void click (){

}
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('List Animation', style: TextStyle(fontWeight: FontWeight.bold)),
              )),
          FutureBuilder<List<DataSource>>(
            initialData: [],
            future: _dataSource.getInitData(),
            builder: (context, snapshot) {
              final List<DataSource>? data = snapshot.data;
              return LiveSliverList(
                controller: _scrollController,
                itemCount: data!.length,
                itemBuilder: (context, index, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset(0, 0.3),
                        end: Offset.zero,
                      ).animate(animation),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 2.0),
                        child: CardRow(dataSource: data[index])
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}