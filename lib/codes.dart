import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

task1() 
{
  var mybody=Column(mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Container(width: 300,
              height: 300,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/sachin-mallick/pic/master/music.jpg'),
                fit: BoxFit.cover,      
              ),
      ),
            ),
        ),     
            
  FlatButton(
    color: Colors.indigoAccent,
    textColor: Colors.lime,
    onPressed: (){
      print('hi');
      var audio=AudioCache();
      audio.play('audio/music.wav');
    
  }, child: Text('PLAY AUDIO'),)          
  ]
  );
  
  
  
  var myhome=Scaffold(
    backgroundColor: Colors.brown,
    appBar:AppBar(title: Text('AUDIO APP (task 1)'),
    backgroundColor: Colors.transparent,),
    body: Center(child: mybody),
  );
  return MaterialApp(home: myhome);
}