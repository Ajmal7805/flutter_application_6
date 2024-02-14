import 'package:flutter/material.dart';

class Hs extends StatefulWidget {
  const Hs({super.key});

  @override
  State<Hs> createState() => _HsState();
}

class _HsState extends State<Hs> {
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
  List<String> answer=['yes','no','no','yes','yes','no','no','yes','yes','no'];
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
                if(answer[questionno]=='yes'){ scorekeeper.add(Icon(Icons.check,color: Colors.green,));}
                else{scorekeeper.add(Icon(Icons.close,color: Colors.red,));}
                if(questionlist.length>questionno+1){
                  questionno=questionno+1;
                }
                else{questionno=0;}
                setState(() {
                  
                });
              },
              height: 40,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.green,
              child: Text("TRUE",style: TextStyle(color: Colors.white),),
              ),
              SizedBox(
                height: 10,
              ),MaterialButton(onPressed: (){
                if(answer[questionno]=="no"){scorekeeper.add(Icon(Icons.close,color: Colors.red,));}
                else{scorekeeper.add(Icon(Icons.check,color: Colors.green,));}
                if(questionlist.length>questionno+1){questionno=questionno+1;}
                else{questionno=0;}
                setState(() {
                  
                });
              },
              height: 40,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.red,
              child: Text("FALSE",style: TextStyle(color: Colors.white),),
              ),
              Row(
                children: scorekeeper,
              )
            ],
          ),
        ),
      ),
    );
  }
}