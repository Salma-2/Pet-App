import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pet_app/presentation/theme/light_color.dart';
import 'package:pet_app/presentation/theme/text_styles.dart';
import 'package:pet_app/presentation/theme/extention.dart';
import 'package:pet_app/presentation/theme/theme.dart';
import 'package:drawer_swipe/drawer_swipe.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var drawerKey = GlobalKey<SwipeDrawerState>();

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
                  color: LightColor.green, lightColor: LightColor.lightGreen),
              _categoryCard("Blogs",
                  color: LightColor.skyBlue, lightColor: LightColor.lightBlue),
              _categoryCard("Clinics",
                  color: LightColor.orange, lightColor: LightColor.lightOrange),
              _categoryCard("Stores",
                  color: LightColor.purple, lightColor: LightColor.purpleLight),
              _categoryCard("Shelters",
                  color: LightColor.black, lightColor: LightColor.lightblack),
              _categoryCard("Ask a Doctor",
                  color: LightColor.grey, lightColor: LightColor.iconColor),
            ],
          ),
        ),
      ],
    );
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

  Color randomColor() {
    var random = Random();
    final colorList = [
      Theme.of(context).primaryColor,
      LightColor.orange,
      LightColor.green,
      LightColor.grey,
      LightColor.lightOrange,
      LightColor.skyBlue,
      LightColor.titleTextColor,
      Colors.red,
      Colors.brown,
      LightColor.purpleExtraLight,
      LightColor.skyBlue,
    ];
    var color = colorList[random.nextInt(colorList.length)];
    return color;
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
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.person, color: Colors.white),
          ),
          ListTile(
            title: Text(
              'Chat Sessions',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.chat, color: Colors.white),
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
      ],
    );
  }
}
