import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List <String> _categories = [
    "Food","Electronics","Groceries","Dress","Fashion","Glasses","Camera"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Shovon",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
              Text(
                "Let's gets something?",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4f4c4c)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      height: 130,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During \nCovid 19",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/img.png",
                              height: 75,
                              width: 150,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      height: 130,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During \nCovid 19",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/img.png",
                              height: 75,
                              width: 150,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      height: 130,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During \nCovid 19",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/img.png",
                              height: 75,
                              width: 150,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,

                    ),
                    ),
                    Text("View All",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffff4800),
                      ),
                    ),
                 
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 40,
                child: ListView.builder(itemCount: _categories.length,
                scrollDirection: Axis.horizontal
                ,itemBuilder: (_, index){
                  return Container(
                    margin: EdgeInsets.only(right: 5),
                    padding: EdgeInsets.only(top: 13),
                    height: 15,
                    width: 120,
                    child: Text(_categories[index],textAlign: TextAlign.center,),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.amber),

                  );
                    }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
