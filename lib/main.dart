import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> title = [
    "Nguyen Van A",
    "Nguyen Van B",
    "Nguyen Van C",
    "Nguyen Van X",
    "Nguyen Van D",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van X",
    "Nguyen Van D"
  ];
  final List<String> content = [
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C",
    "CNTT K14C"
  ];

  //MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'List View';

    return MaterialApp(
      title: title,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text('ListView Demo'),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'ListView',
                  ),
                  Tab(
                    text: 'ListView.builder',
                  ),
                  Tab(
                    text: 'ListView.custom',
                  ),
                  Tab(
                    text: "ListView.separated",
                  ),
                ],
                isScrollable: true,
              )),
          body: TabBarView(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                controller: ScrollController(),
                children: List.generate(100, (index) {
                  return Container(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(Icons.account_circle,
                            size: 40.0, color: Colors.white30),
                        title: Text('Title $index'),
                        subtitle: Text('Content $index'),
                      ),
                    ),
                    color: Colors.blue[400],
                    margin: EdgeInsets.all(1.0),
                  );
                }),
              ),
              ListView.builder(
                itemCount: title.length,
                controller: ScrollController(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    //child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(Icons.account_circle,
                            size: 40.0, color: Colors.white30),
                        title: Text(title[index]),
                        subtitle: Text(content[index]),
                      ),
                    ),
                    color: Colors.blue[300],
                    margin: EdgeInsets.all(1.0),
                  );
                },
              ),
              ListView.custom(
                childrenDelegate:
                SliverChildListDelegate(List.generate(100, (index) {
                  return Container(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(Icons.account_circle,
                            size: 40.0, color: Colors.white30),
                        title: Text('MainItem $index'),
                        subtitle: Text('SubText $index'),
                      ),
                    ),
                    color: Colors.blue[400],
                    margin: EdgeInsets.all(1.0),
                  );
                })),
              ),
              ListView.separated(
                itemCount: 50,
                separatorBuilder: (BuildContext context, int index) =>
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: ListTile(
                          leading: const Icon(Icons.account_circle,
                              size: 40.0, color: Colors.grey),
                          title: Text('SeperatorItem $index'),
                          subtitle: Text('SeperatorSubText $index'),
                        ),
                      ),
                      color: Colors.amber[100],
                      margin: EdgeInsets.all(1.0),
                    ),
                itemBuilder: (BuildContext context, int index) {
                  //if (index < 50)
                  return Container(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(Icons.account_circle,
                            size: 40.0, color: Colors.white30),
                        title: Text('MainItem $index'),
                        subtitle: Text('SubText $index'),
                      ),
                    ),
                    color: Colors.yellowAccent,
                    margin: EdgeInsets.all(1.0),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
