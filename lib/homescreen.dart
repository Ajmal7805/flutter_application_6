import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> scorekeeper=[];
  List<String> questionlist=[
     'my name is ajmal',
     'my name is fidha',
      'my name is rasha',
       "my  fathe's name is rasheed",
        'my frind name is shibil',
         'my frnd name is rini',
          'my teacher name is ajmal',
           'my teacher name is monisha',
            'my teacher name is nancy',
             'i have a car',
  ];
  List<String>answer=['yes','no','no','yes','yes','no','no','yes','yes','no'];
  int questionno=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Center(child: Text(questionlist[questionno],style: TextStyle(fontSize: 20,color: Colors.white),))),
              MaterialButton(onPressed: (){
                if(answer[questionno]=="yes"){scorekeeper.add(Image(image: AssetImage("images/scan.png",),width: 30,color: Colors.green,),);setState(() {
                  
                });}
                else{scorekeeper.add(Image(image: AssetImage("images/scan.png"),width: 30,color: Colors.red,));setState(() {
                  
                });}
                if(questionlist.length>questionno){questionno=questionno+1;}
                else{questionno=0;}
              },
              height: 40,
              minWidth: double.infinity,
              color: Colors.green,
              child: Text("TRUE",style: TextStyle(color: Colors.white),),),
              SizedBox(
                height: 5,
              ),MaterialButton(onPressed: (){
                if(answer[questionno]=="no"){scorekeeper.add(Image(image: AssetImage("images/scan.png"),width: 30,color: Colors.red,));setState(() {
                  
                });}
                else{scorekeeper.add(Image(image: AssetImage("images/scan.png"),width: 30,color: Colors.green,));setState(() {
                  
                });}
                if(questionlist.length>questionno){questionno=questionno+1;}
                else{questionno=0;}
              },
              height: 40,
              minWidth: double.infinity,
              color: Colors.red,
              child: Text("FALSE",style: TextStyle(color: Colors.white),)),
              Row(
                children: scorekeeper,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}