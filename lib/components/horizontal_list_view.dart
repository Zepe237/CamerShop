import 'package:flutter/material.dart';
class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:<Widget>[
          Tontine(
            image_location: 'images/tontine/cpr-pl.png',
            image_caption: 'Presence 1',
          ),
        ],
      ),
    );
  }
}
class Tontine extends StatelessWidget {
  final String image_location ;
  final String image_caption ;
  Tontine({
    this.image_location,
    this.image_caption
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap:(){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 88.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: TextStyle(fontSize: 12.0),),

            ),
          ),
        ),
      ),
    );
  }
}