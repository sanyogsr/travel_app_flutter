import 'package:flutter/material.dart';
import 'package:myappp4/widgets/app_large_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //menu
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //discover text
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(
                text: 'Discover',
                color: Colors.black,
              )),
          SizedBox(
            height: 30,
          ),
          //tabbbar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: _tabController,
                  indicator: CircleTabIndicators(color: Colors.blue, radius: 4),
                  tabs: [
                    Tab(
                      text: 'Places',
                    ),
                    Tab(
                      text: 'Inspiration',
                    ),
                    Tab(
                      text: 'Emotions',
                    ),
                  ]),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/model_one.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Text('There'),
              Text('Bye'),
            ]),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicators extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicators({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;

    final Offset CircleOffset =
        Offset(configuration.size!.width / 2, configuration.size!.height);
    canvas.drawCircle(offset, radius, _paint);
  }
}
