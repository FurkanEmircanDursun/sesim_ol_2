import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sesim_ol/emergency_page.dart';
import 'package:sesim_ol/logined_page.dart';

class ChoicePage extends StatelessWidget {

   var list=[Icons.fastfood_outlined,Icons.heart_broken_sharp,Icons.movie_outlined,Icons.videogame_asset_off,Icons.abc,Icons.safety_check,Icons.access_alarm,Icons.kayaking];
  var colors=[Colors.green,Colors.red,Colors.grey,Colors.blueAccent,Colors.purple,Colors.black12,Colors.amberAccent,Colors.orangeAccent];

   @override
  Widget build(BuildContext context) {
    return Scaffold(

  appBar: AppBar(
    backgroundColor: Colors.blueAccent,
    centerTitle: true,
    title: Text('Species',style: TextStyle(fontWeight: FontWeight.bold)),
  ),
      body: SafeArea(
        child: GridView.count(

        crossAxisCount: 2 ,
        children: List.generate(8,(index){
          return Container(
            child: InkWell(
              onTap: (){
                if( index==0) {

                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodPage()));
                }
                if( index==1) {

                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EmergencyPage()));
                }

              },
              child: Card(

                color: colors[index],

                child: Icon(

                  list[index],
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
          );
        }),
    ),
      ),




    );
  }
}
