import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: SafeArea(
                child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black38,
                    indicatorColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        icon: Icon(CupertinoIcons.home, size: 25),
                      ),
                      Tab(
                        icon: Icon(CupertinoIcons.person, size: 25),
                      ),
                      Tab(
                        icon: Icon(CupertinoIcons.pen, size: 25),
                      ),
                    ]),
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              Center(
                child: Text('1st Tab',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ),
              Center(
                child: Text('2nd Tab',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ),
              Center(
                child: Text('3rd Tab',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ),
            ])),
          ],
        ));
  }
}
