import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

    margin: EdgeInsets.only(top: 50),
      child: GridView.builder(itemCount: 2 ,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5, crossAxisCount: 2),
            itemBuilder: (_, index) {
              return Container(

                padding: EdgeInsets.all(10),
                width: 300,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(child: Image.asset("assets/img_4.png",width: 150,),top: -20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Apple Watch",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Series X White",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "\$200",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.red),
                        )
                      ],
                    )
                  ],
                ),
              );
            }),

    );
  }
}
