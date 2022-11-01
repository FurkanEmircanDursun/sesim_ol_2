
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sesim_ol/choice_page.dart';


class EmergencyPage extends StatelessWidget {
  var colors=[
    Colors.purple,Colors.black12,Colors.green,Colors.red,Colors.amberAccent,Colors.orangeAccent,
    Colors.purple,Colors.red,Colors.grey,Colors.blueAccent,];
  var playlist=['help_me.mp3','i_need_help.mp3','can_anybody_hear_me.mp3','i_need_a_doctor.mp3',
   'stay_with_me.mp3','mehmet_ali.mp3'

  ];
  var playString=['HELP ME','I NEED HELP',
    'CAN ANYBODY HEAR ME ?','I NEED A DOCTOR',
    'STAY WİTH ME','MY NAME İS MEHMET ALİ'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        centerTitle: true,
        title: Text('Emergency',style: TextStyle(fontWeight: FontWeight.bold),),

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
          children: List.generate(playString.length,(index){
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
