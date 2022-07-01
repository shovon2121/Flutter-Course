import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (_,constraints){
        if(constraints.maxWidth > 400 && constraints.maxWidth < 580){
          return SingleChildScrollView(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4/3,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.cover,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.green,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.cyan,
                  child: FractionallySizedBox(
                    heightFactor: 0.5,
                    widthFactor: 0.5,
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                ),
                Container(
                  height: 200.h,
                  width: 400.w,
                  color: Colors.amber,
                  child: Text("app_name".tr,textAlign: TextAlign.center,style: TextStyle(fontSize: 30.sp,color: Colors.white,)),
                ),


              ],
            ),
          );
        }else{
          return Container(color: Colors.amber,);
        }
      },)
    );
  }
}
