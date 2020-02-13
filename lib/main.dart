import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:simple_animations/simple_animations.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger Truck',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildList(String picture) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(picture), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Maple Master Tempah",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,

                    ),
                    ),
                    Text("\$12.25",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Center(
                child: SizedBox(
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Color(0xFFFF335C),
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomRight,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      NetworkImage(
                          'https://tul.imgix.net/content/article/melbournes-best-burgers.jpg?auto=format,compress&w=1200&h=630&fit=crop'),
                      NetworkImage(
                          'https://cdn.vox-cdn.com/thumbor/73nhsZwI55BVgH8-rapmIhkvbUk=/0x0:4047x3035/1200x675/filters:focal(1700x1194:2346x1840)/cdn.vox-cdn.com/uploads/chorus_image/image/64046617/20150915-_Upland_Burger_3.0.0.1489236245.0.jpg'),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {},
                    color: Colors.red,
                  ),
                ],
              ),
              Positioned(
                  top: 160,
                  left: 5.0,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.7",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
                child: Text(
                  "Open now untill 7 pm",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 15),
                child: Text(
                  "The Cinnamon Snail",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "17th st & union Sq East",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "400ft away",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.location_searching,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Location confirmed by 3 users today",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 0, 10),
                child: Container(
                  child: Text(
                    "Featured items",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              _buildList(
                  "https://assets.bonappetit.com/photos/5d1cb1880813410008e914fc/16:9/w_1200,c_limit/Print-Summer-Smash-Burger.jpg"),
              SizedBox(height: 10,),
              _buildList(
                  "https://www.redrobin.com/content/dam/web/menu/other-fun-on-a-bun/veggie-burger-650.jpg.transform/menu-item-tablet-mobile-transform/img.jpg"),
              SizedBox(
                height: 10,
              ),
              _buildList(
                  "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/fbb73f91-2a4f-475e-bb25-ce12d72c9d19/Derivates/8be8be42-637a-4455-ac82-33198732f11a.jpg"),
              SizedBox(height: 10,),
              _buildList(
                  "https://img.hellofresh.com/f_auto,fl_lossy,q_auto,w_1200/hellofresh_s3/image/christmas-stuffing-burger-beb015f4.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}
