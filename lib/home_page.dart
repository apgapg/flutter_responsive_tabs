import 'package:flutter/material.dart';
import 'package:flutter_responsive_tabs/tabs/first_tab.dart';
import 'package:flutter_responsive_tabs/tabs/second_tab.dart';
import 'package:flutter_responsive_tabs/tabs/third_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Tabs"),
      ),
      body: isTab(context)
          ? Container(
              margin: EdgeInsets.only(left: 4, right: 4, top: 8),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Tab(
                            text: "FIRST",
                          ),
                        ),
                        Expanded(child: FirstTab()),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Tab(
                            text: "SECOND",
                          ),
                        ),
                        Expanded(child: SecondTab()),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Tab(
                            text: "THIRD",
                          ),
                        ),
                        Expanded(child: ThirdTab()),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    clipBehavior: Clip.antiAlias,
                    elevation: 2,
                    child: TabBar(
                      isScrollable: true,
                      indicatorWeight: 4,
                      tabs: [
                        Tab(
                          text: "FIRST",
                        ),
                        Tab(
                          text: "SECOND",
                        ),
                        Tab(
                          text: "THIRD",
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        FirstTab(),
                        SecondTab(),
                        ThirdTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  bool isTab(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.width;
    return shortestSide >= 600;
  }
}
