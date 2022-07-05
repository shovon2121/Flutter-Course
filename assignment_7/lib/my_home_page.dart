import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff3f3f6),
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140.w,
                  height: 106.h,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset("assets/img.png"),
                  ),
                ),
                Container(
                  width: 140.w,
                  height: 60.h,
                  child: ElevatedButton(
                    child: Text("Record their answer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                                          fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5f9ea0),
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xfff3f3f6),
                      side: BorderSide(
                        color: Color(0xff5f9ea0),
                        width: 3.w
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            //---------------------------------------------------------------------------
            Center(
              child: Container(
                color: Color(0xfff3f3f6),
                margin: EdgeInsets.only(top: 100.h),
                width: 240.w,
                height: 50.h,
                child: Text("Grow closer to your loved ones \n by asking them this questions",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff5f9ea0),
                ),),
              ),
            ),
            Center(
              child: Container(

                margin: EdgeInsets.only(top: 10.h),
                width: 350.w,
                height: 150.h,

                child: Center(
                  child: Text("Loading......... ",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5f9ea0),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Color(0xff5f9ea0),width: 5.sp)
                ),
              ),
            ),
            //----------------------------------------

            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              width: 410.w,
              height: 150.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 5),
                    height: 60.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: Color(0xff5f9ea0),
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: TextButton.icon(icon: Icon(Icons.copy),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                      label: const Text("Copy this question"),

                      onPressed: () {  },),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 70.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        color: Color(0xfff3f3f6),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextButton.icon(icon: Icon(Icons.swap_horiz,color: Color(0xff5f9ea0),),
                      style: TextButton.styleFrom(
                          side: BorderSide(color: Color(0xff5f9ea0),width: 3),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                      label: const Text("Try another one",style: TextStyle(
                        color: Color(0xff5f9ea0),
                      ),),

                      onPressed: () {  },),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
