import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
 final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController mail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 5'),
        ), //AppBar
        body: Center(
            child: Form(
            autovalidateMode: AutovalidateMode.always,
              key: formKey,
              child: Container(
          height: 400,
          child: Card(
              elevation: 10,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if(val!.isEmpty){
                        return "this field cant be empty";
                      }else if(val.length < 4) {
                        return "Name should at least contain 4 characters";
                      }else {
                        return null;
                      }
                    },
                    controller: name,
                    decoration: InputDecoration(

                      hintText: "Input your name",
                    ),
                  ),
                  TextFormField(
                    validator: (val) {
                      if(val!.isEmpty){
                        return "mail can not be empty";
                      }else {
                        return null;
                    }
                  },
                    controller: mail,
                    decoration: InputDecoration(hintText: "Input your mail"),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text("Submit"),
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          Navigator.pushNamed(context, "/page-one");
                        }
                      },
                    ),
                  ),
                ],
              ),
          ),
        ),
            )), // center
      ),
    );
  }
}
