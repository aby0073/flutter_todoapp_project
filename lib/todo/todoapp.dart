import 'package:flutter/material.dart';
class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  final _formkey = GlobalKey<FormState>();
  var titleController = TextEditingController();
  var descController = TextEditingController();
  var title = '',description = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: titleController,
              validator: (value){
                if(title =='') {
                  return "Enter the Title";
                }
                return null;
                },
                decoration: InputDecoration(
                  label: Text("Title"),border: OutlineInputBorder()),
                ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: descController,
            validator: (value){
              if(description =='') {
                return "Enter the Description";
              }
              return null;
            },
            decoration: InputDecoration(
                label: Text("Description"),border: OutlineInputBorder()),
          ),
        ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: ElevatedButton(onPressed: () {
          setState(() {
            title = titleController.text;
            description=descController.text;

            if(_formkey.currentState!.validate()){
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("SAVED")));
        }

          });
        }, child: Text("SAVE")),
      ),
    )
        ],
    ),

          )

      );
  }
}
