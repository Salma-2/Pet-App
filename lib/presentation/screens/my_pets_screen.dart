import 'package:pet_app/data/models/pet.dart';
import 'add_pet_screen.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/presentation/theme/all_theme.dart';

class MyPetsScreen extends StatelessWidget {
  final BuildContext context;
  const MyPetsScreen({Key key, this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.pets),
        tooltip: 'Add new Pet',
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPetScreen()));
        },
      ),
      appBar: AppBar(
        title: Text('My Pets'),
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
    var petsList = [
      Pet(petName: 'Eveln', petImageUrl: 'https://cutt.ly/Dc4GjYU'),
      Pet(petName: 'Rex', petImageUrl: 'https://cutt.ly/Dc4GjYU'),
      Pet(petName: 'Rocky', petImageUrl: 'https://cutt.ly/Dc4GjYU'),
    ];
    return Column(
        children: petsList.map((x) {
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
                model.petImageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(model.petName, style: TextStyles.title.bold),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: 30,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
