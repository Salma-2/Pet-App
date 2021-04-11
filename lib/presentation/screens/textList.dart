import 'package:flutter/material.dart';
import 'package:pet_app/presentation/theme/all_theme.dart';

class TextListScreen extends StatelessWidget {
  final String title;
  final BuildContext context;
  final List<dynamic> dataList;

  const TextListScreen({Key key, this.title, this.context, this.dataList})
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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(
                model.imageUrl,
                height: 70,
                width: 70,
                fit: BoxFit.contain,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 8),
                  child: Column(
                    children: [
                      Text(model.name, style: TextStyles.title.bold),
                      Text(
                        model.description,
                        style: TextStyles.bodySm.subTitleColor.bold,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    size: 30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ).ripple(
      () {
        Navigator.pushNamed(context, "/DetailPage", arguments: model);
      },
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );
  }
}
