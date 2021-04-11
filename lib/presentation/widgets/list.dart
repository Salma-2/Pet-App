import 'package:flutter/material.dart';
import 'package:pet_app/presentation/theme/all_theme.dart';

class ListScreen extends StatelessWidget {
  final String title;
  final BuildContext context;
  final List<dynamic> dataList;

  const ListScreen({Key key, this.title, this.context, this.dataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              icon: Icon(
                Icons.sort,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: dataListWidget(),
    );
  }

  Widget dataListWidget() {
    return ListView(
      padding: EdgeInsets.only(top: 15),
      children: <Widget>[getDataWidgetList()],
    );
  }

  Widget getDataWidgetList() {
    return Column(
        children: dataList.map((x) {
      return dataTile(x);
    }).toList());
  }

  Widget dataTile(model) {
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
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(model.name, style: TextStyles.title.bold),
          subtitle: Text(
            model.description,
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
}
