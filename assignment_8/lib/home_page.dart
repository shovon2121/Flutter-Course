import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _input = TextEditingController();
  TextEditingController _edit = TextEditingController();
  List<String> todos = ['one','two','three'];
  Box? todoBox;
  @override
  void initState() {
    // TODO: implement initState
    todoBox = Hive!.box('todo');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: _input,
                decoration: InputDecoration(
                  hintText: "Enter todo",
                ),
              ),
              ElevatedButton(onPressed: () async {
                var value = _input.text;
                await todoBox!.add(value);
              }, child: Text("Add ToDo")),
              Expanded(child: ValueListenableBuilder(
                valueListenable: Hive.box('todo').listenable(),
                builder: (_,box,widget){
                  return Container(
                    child: ListView.builder(itemBuilder: (_,index) {
                      return Card(
                        child: ListTile(
                          title: Text(todoBox!.getAt(index).toString()),
                          leading: IconButton(icon: Icon(Icons.edit),
                            onPressed: () {
                            showDialog(context: context, builder: (_) {
                              return AlertDialog(
                                title: Text("Update a todo"),
                                content: Column(
                                  children: [
                                    TextField(decoration: InputDecoration(hintText: todoBox!.getAt(index).toString()),controller: _edit,),
                                    ElevatedButton(onPressed: () async {
                                      var value = _edit.text;
                                      todoBox!.putAt(index, value);
                                      Navigator.pop(context);
                                    }, child: Text("Edit"))

                                  ],
                                ),
                              );
                            });
                            },
                          ),
                          trailing: IconButton(icon: Icon(Icons.delete_forever),
                            onPressed: () async {
                            todoBox!.deleteAt(index);
                            },
                          ),
                        ),
                      );
                    },
                      itemCount: todoBox!.keys.toList().length,),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
