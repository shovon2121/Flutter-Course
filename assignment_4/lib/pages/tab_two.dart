import 'package:flutter/material.dart';
class TabTwo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (_,index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Image.asset("assets/img_4.png",fit: BoxFit.cover,),),
              trailing: Text("\$200",style: TextStyle(color: Colors.red),),
              title: Text("Apple Watch",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400,),),
              subtitle: Text("Series X",textAlign: TextAlign.center,style: TextStyle(color: Colors.black12,fontSize: 20,fontWeight: FontWeight.w700),),
            ),
          );
        }

      ),
    );
  }
}
