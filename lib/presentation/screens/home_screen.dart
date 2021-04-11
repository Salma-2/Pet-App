import 'package:flutter/material.dart';
import 'package:pet_app/data/models/model.dart';
import 'package:pet_app/presentation/screens/chat_sessions_screen.dart';
import 'package:pet_app/presentation/theme/all_theme.dart';
import 'package:drawer_swipe/drawer_swipe.dart';
import 'package:pet_app/presentation/screens/list.dart';
import 'package:pet_app/presentation/screens/textList.dart';

import 'my_pets_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var drawerKey = GlobalKey<SwipeDrawerState>();

  var storeList = [
    Model('store1', 'https://cutt.ly/Dc4ylvg', 'desc1'),
    Model('store2', 'https://cutt.ly/yc4yv4X', 'desc2'),
    Model('store3', 'https://cutt.ly/Dc4ylvg', 'desc3'),
    Model('store4', 'https://cutt.ly/yc4yv4X', 'desc4'),
    Model('store5', 'https://cutt.ly/Dc4ylvg', 'desc5'),
  ];
  var postList = [
    Model(
        'post1',
        'https://image.freepik.com/free-vector/cat-elegant-tie_71593-692.jpg',
        'desc1'),
    Model(
        'post2',
        'https://image.freepik.com/free-vector/cat-elegant-tie_71593-692.jpg',
        'desc2'),
    Model(
        'post3',
        'https://image.freepik.com/free-vector/cat-elegant-tie_71593-692.jpg',
        'desc3'),
    Model(
        'post4',
        'https://image.freepik.com/free-vector/cat-elegant-tie_71593-692.jpg',
        'desc4'),
    Model(
        'post5',
        'https://image.freepik.com/free-vector/cat-elegant-tie_71593-692.jpg',
        'desc5'),
  ];
  var blogList = [
    Model('blog1', 'https://cutt.ly/Xc4hR8Q', 'desc1'),
    Model('blog2', 'https://cutt.ly/Xc4hR8Q', 'desc2'),
    Model('blog3', 'https://cutt.ly/Xc4hR8Q', 'desc3'),
    Model('blog4', 'https://cutt.ly/Xc4hR8Q', 'desc4'),
    Model('blog5', 'https://cutt.ly/Xc4hR8Q', 'desc5'),
  ];
  var clinicList = [
    Model('clinic1', 'https://cutt.ly/Fc4juzI', 'desc1'),
    Model('clinic2', 'https://cutt.ly/Fc4juzI', 'desc2'),
    Model('clinic3', 'https://cutt.ly/Fc4juzI', 'desc3'),
    Model('clinic4', 'https://cutt.ly/Fc4juzI', 'desc4'),
    Model('clinic5', 'https://cutt.ly/Fc4juzI', 'desc5'),
  ];
  var shelterList = [
    Model(
        'shelter1',
        'https://image.freepik.com/free-vector/animal-shelter-concept-illustration_114360-2706.jpg',
        'desc1'),
    Model(
        'shelter2',
        'https://image.freepik.com/free-vector/animal-shelter-concept-illustration_114360-2706.jpg',
        'desc2'),
    Model(
        'shelter3',
        'https://image.freepik.com/free-vector/animal-shelter-concept-illustration_114360-2706.jpg',
        'desc3'),
    Model(
        'shelter4',
        'https://image.freepik.com/free-vector/animal-shelter-concept-illustration_114360-2706.jpg',
        'desc4'),
    Model(
        'shelter5',
        'https://image.freepik.com/free-vector/animal-shelter-concept-illustration_114360-2706.jpg',
        'desc5'),
  ];
  var doctorList = [
    Model(
        'doctor1',
        'https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg',
        'desc1'),
    Model(
        'doctor2',
        'https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg',
        'desc2'),
    Model(
        'doctor3',
        'https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg',
        'desc3'),
    Model(
        'doctor4',
        'https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg',
        'desc4'),
    Model(
        'doctor5',
        'https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg',
        'desc5'),
  ];

  Widget _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: IconButton(
        icon: Icon(
          Icons.short_text,
          size: 30,
          color: Colors.black,
        ),
        onPressed: () {
          if (drawerKey.currentState.isOpened()) {
            drawerKey.currentState.closeDrawer();
          } else {
            drawerKey.currentState.openDrawer();
          }
        },
      ),
      actions: <Widget>[
        Icon(
          Icons.notifications_none,
          size: 30,
          color: LightColor.grey,
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          child: Container(
            // height: 40,
            // width: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: Image.asset("assets/images/user.png", fit: BoxFit.fill),
          ),
        ).p(8),
      ],
    );
  }

  Widget _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hello,", style: TextStyles.title.subTitleColor),
        Text("Salma Hamdi", style: TextStyles.h1Style),
      ],
    ).p16;
  }

  Widget _searchField() {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(13)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: LightColor.grey.withOpacity(.3),
            blurRadius: 15,
            offset: Offset(5, 5),
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyles.body.subTitleColor,
          suffixIcon: SizedBox(
              width: 50,
              child: Icon(Icons.search, color: LightColor.purple)
                  .alignCenter
                  .ripple(() {}, borderRadius: BorderRadius.circular(13))),
        ),
      ),
    );
  }

  Widget _category() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Categories", style: TextStyles.title.bold),
            ],
          ),
        ),
        SizedBox(
          height: AppTheme.fullHeight(context) * .28,
          width: AppTheme.fullWidth(context),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _categoryCard("Posts",
                      color: LightColor.green,
                      lightColor: LightColor.lightGreen)
                  .ripple(() {
                newScreen('Posts', postList);
              }),
              _categoryCard("Blogs",
                      color: LightColor.skyBlue,
                      lightColor: LightColor.lightBlue)
                  .ripple(() {
                newScreen('Blogs', blogList);
              }),
              _categoryCard("Clinics",
                      color: LightColor.orange,
                      lightColor: LightColor.lightOrange)
                  .ripple(() {
                newScreen('Clinics', clinicList);
              }),
              _categoryCard("Stores",
                      color: LightColor.purple,
                      lightColor: LightColor.purpleLight)
                  .ripple(() {
                newScreen('Stores', storeList);
              }),
              _categoryCard("Shelters",
                      color: LightColor.black,
                      lightColor: LightColor.lightblack)
                  .ripple(() {
                newScreen('Shelters', shelterList);
              }),
              _categoryCard("Ask a Doctor",
                      color: LightColor.grey, lightColor: LightColor.iconColor)
                  .ripple(() {
                newScreen('Doctors', doctorList);
              }),
            ],
          ),
        ),
      ],
    );
  }

  void newScreen(
    title,
    dataList,
  ) {
    var listScreen;
    switch (title) {
      case 'Blogs':
        listScreen = TextListScreen(
          context: context,
          title: title,
          dataList: dataList,
        );
        break;

      case 'Posts':
        listScreen = TextListScreen(
          context: context,
          title: title,
          dataList: dataList,
        );
        break;

      default:
        listScreen = ListScreen(
          context: context,
          title: title,
          dataList: dataList,
        );
    }

    var route = MaterialPageRoute(builder: (context) => (listScreen));
    Navigator.push(context, route);
  }

  Widget _categoryCard(String title, {Color color, Color lightColor}) {
    TextStyle titleStyle = TextStyles.title.bold.white;
    if (AppTheme.fullWidth(context) < 392) {
      titleStyle = TextStyles.body.bold.white;
    }
    return AspectRatio(
      aspectRatio: 6 / 8,
      child: Container(
        height: 280,
        width: AppTheme.fullWidth(context) * .3,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 10,
              color: lightColor.withOpacity(.8),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: -20,
                  left: -20,
                  child: CircleAvatar(
                    backgroundColor: lightColor,
                    radius: 60,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Flexible(
                      child: Text(title, style: titleStyle).hP16,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ).p16
              ],
            ),
          ),
        ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }

  Widget _list(String featuredElement) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Featured $featuredElement", style: TextStyles.title.bold),
              IconButton(
                  icon: Icon(
                    Icons.sort,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {})
              // .p(12).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(20))),
            ],
          ).hP16,
          getWidgetList(featuredElement)
        ],
      ),
    );
  }

  Widget getWidgetList(String featuredElement) {
    var currList = List.empty();
    switch (featuredElement) {
      case "Doctors":
        currList = doctorList;
        break;
      case "Clinics":
        currList = clinicList;
        break;
      case "Stores":
        currList = storeList;
        break;
    }
    return Column(
        children: currList.map((x) {
      return _tile(x);
    }).toList());
  }

  Widget _tile(Model model) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 10,
            color: LightColor.grey.withOpacity(.2),
          ),
          BoxShadow(
            offset: Offset(-3, 0),
            blurRadius: 15,
            color: LightColor.grey.withOpacity(.1),
          )
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(
                model.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Text(model.name, style: TextStyles.title.bold),
          subtitle: Text(
            model.name,
            style: TextStyles.bodySm.subTitleColor.bold,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: 30,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ).ripple(() {
        Navigator.pushNamed(context, "/DetailPage", arguments: model);
      }, borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SwipeDrawer(
        radius: 20,
        key: drawerKey,
        hasClone: false,
        bodySize: 150,
        backgroundColor: LightColor.lightBlue,
        drawer: buildDrawer(),
        child: buildBody(),
      ),
    );
  }

  Widget buildDrawer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'My Pets',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.pets, color: Colors.white),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyPetsScreen(
                            context: context,
                          )));
              drawerKey.currentState.closeDrawer();
            },
          ),
          ListTile(
            title: Text(
              'Chat Sessions',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.chat, color: Colors.white),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatListScreen()));

              drawerKey.currentState.closeDrawer();
            },
          ),
          ListTile(
            title: Text(
              'Contact Us',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.mail, color: Colors.white),
          ),
          ListTile(
            title: Text(
              'Sign Out',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.exit_to_app_sharp, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              _header(),
              _searchField(),
              _category(),
            ],
          ),
        ),
        _list("Doctors"),
        _list("Clinics"),
        _list("Stores"),
      ],
    );
  }
}
