
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sesim_ol/choice_page.dart';
import 'package:sesim_ol/signin_page.dart';

class FoodPage extends StatelessWidget {
  var colors=[
    Colors.purple,Colors.black12,Colors.green,Colors.red,Colors.amberAccent,Colors.orangeAccent,
    Colors.purple,Colors.red,Colors.grey,Colors.blueAccent,];
  var playlist=['breakfastfood.mp3','icedchocolatecake.mp3','idontdrink.mp3','ihavetoeatsomething.mp3',
    'chocolate.mp3','bread.mp3','banana.mp3','orange.mp3','pineapple.mp3','tomato.mp3'

  ];
  var playString=['BREAKFAST FOOD','ICED CHOCOLATE CAKE',
  'I DONT DRİNK','I HAVE TO EAT SOMETHING',
  'CHOCOLATE','BREAD','BANANA','ORANGE','PİNEAPPLE','TOMATO'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        centerTitle: true,
        title: Text('Foods',style: TextStyle(fontWeight: FontWeight.bold),),

        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChoicePage()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            )),
      ),
      body: SafeArea(

    child: GridView.count(

      crossAxisCount: 2 ,
      children: List.generate(10,(index){
        return Container(
          child: InkWell(
            onTap: (){


                AudioCache().play(playlist[index]);

            },
            child: Card(
              child: Center(
                child: Text(
            textAlign: TextAlign.center,
        playString[index],
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,)
                ),
              ),


              color: colors[index],
            ),
          ),
        );
      }),
    ),
      ),
    );
  }
}
