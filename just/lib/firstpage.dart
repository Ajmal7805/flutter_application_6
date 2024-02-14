import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: Icon(Icons.arrow_back,color: Colors.black,),backgroundColor: Colors.white,elevation: 0,),
      body: Container(margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
            SizedBox(
              height: 10,
            ),
            Row(mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('check out lorum ipsum!!.',style: TextStyle(fontSize: 18,color: Colors.black,),textAlign: TextAlign.center,),
                ),
                MaterialButton(onPressed: (){
                  showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        
        content:
        Column(mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.teal[900]),
          ),
          SizedBox(
            height: 45,
          ),
          Text('Lorem ipsum dolar sit amet consectoter.',style: TextStyle(fontSize: 18,color: Colors.black54),textAlign: TextAlign.center,),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },
           style:  
           ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      
    )
  )
) 
          , child:
           Text('ok',style: TextStyle(color: Colors.white),))
        ],
        ),
       
      );
    },
  );
                },
                height: 40,
                minWidth: 100,
                shape: 
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),color: Colors.green,
                child: Text('check out',style: TextStyle(color: Colors.white),),
                ),
                
                
              ],
            ),
            
            
          ],
        ),
      ),
    );
  }
}