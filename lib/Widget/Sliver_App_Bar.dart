import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sliver_app_bar extends StatefulWidget {
  const sliver_app_bar({super.key});

  @override
  State<sliver_app_bar> createState() => _sliver_app_barState();
}

class _sliver_app_barState extends State<sliver_app_bar> {
  final title = 'Hello again, SliverAppBar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              // pinned: false,
              pinned: true,
              floating: false,
              // floating: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("$title",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ) //TextStyle
                  ), //Text
                  background: Image.asset("assets/my_image.png",fit: BoxFit.cover,) //Images.network
              ), //FlexibleSpaceBar
              expandedHeight: 230,
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: Icon(Icons.menu,color: Colors.white,),
                tooltip: 'Menu',
                onPressed: () {},
              ), //IconButton
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.comment,color: Colors.white,),
                  tooltip: 'Comment Icon',
                  onPressed: () {},
                ), //IconButton
                IconButton(
                  icon: Icon(Icons.settings,color: Colors.white,),
                  tooltip: 'Setting Icon',
                  onPressed: () {},
                ), //IconButton
              ], //<Widget>[]
            ), //SliverAppBar
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(
                  tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                  title: Center(
                    child: Text('$index',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 50,
                            color: Colors.black) //TextStyle
                    ), //Text
                  ), //Center
                ), //ListTile
                childCount: 26,
              ), //SliverChildBuildDelegate
            ) //SliverList
          ], //<Widget>[]
        ) //CustonScrollView
      ), //Scaffold
      // Remove debug banner for proper
      // view of setting icon
    );
  }
}
