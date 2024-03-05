import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class QuestionsHive extends StatefulWidget {
  @override
  State<QuestionsHive> createState() => _QuestionsHiveState();
}

class _QuestionsHiveState extends State<QuestionsHive> {
  final TextEditingController textController = TextEditingController();
  final TextEditingController difficultyController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController answerController = TextEditingController();

  List<Map<String, dynamic>> items = [];

  final lessonBox = Hive.box("lesson_box");

  void refreshItem() {
    final data = lessonBox.keys.map((key) {
      final item = lessonBox.get(key);
      return {"key": key, "text": item["text"], "difficulty": item["difficulty"], "category": item["category"], "answer": item["answer"]};
    }).toList();

    setState(() {
    items = data.reversed.toList();
    });
  }

   @override
  void initState() {
    super.initState();
    refreshItem();
  }

  Future<void> createItem(Map<String, dynamic> newItem) async {
    await lessonBox.add(newItem);
    refreshItem();
  }

  Future<void> _updateItem(int itemKey, Map<String, dynamic> item) async {
    await lessonBox.put(itemKey, item);
    refreshItem();
  }

  Future<void> _deleteItem(int itemKey) async {
    await lessonBox.delete(itemKey);
    refreshItem();

    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('An item has been deleted')));
  }  
  


  void _showForm (BuildContext ctx, int? itemKey) async {

    if (itemKey != null) {
      final existingItem =
          items.firstWhere((element) => element['key'] == itemKey);
      textController.text = existingItem['text'];
      difficultyController.text = existingItem['difficulty'];
      categoryController.text = existingItem['category'];
      answerController.text = existingItem['answer'];
    }

    showModalBottomSheet(
      context: context,
      builder: (_) => Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom,
          top: 15,
          left: 15,
          right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(hintText: "Text"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: difficultyController,
              decoration: InputDecoration(hintText: "Difficulty"),
            ),
             SizedBox(
              height: 10,
            ),
            TextField(
              controller: categoryController,
              decoration: InputDecoration(hintText: "Category"),
            ),
             SizedBox(
              height: 10,
            ),
            TextField(
              controller: answerController,
              decoration: InputDecoration(hintText: "Answer"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                createItem({
                  "text": textController.text,
                  "difficulty": difficultyController.text,
                  "category": categoryController.text,
                  "answer": answerController.text,
                });


                textController.text = "";
                difficultyController.text = "";
                categoryController.text = "";
                answerController.text = "";

                Navigator.of(context).pop();
              }, 
              child: Text("Create new")),
            SizedBox(
              height: 10,
            ),  
          ],
        ),  
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions list", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromRGBO(9, 52, 86, 1),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _showForm(context, null),
          child: Icon(Icons.add),
        ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, index) {
          final currentItem = items[index];
          return Card(
            color: Color.fromRGBO(9, 52, 86, 1),
            margin: EdgeInsets.all(10),
            elevation: 3,
            child: ListTile(
              title: Text(currentItem["text"] ?? "No text available", style: TextStyle(color: Colors.white),),
              subtitle: Text(currentItem["answer"].toString(), style: TextStyle(color: Colors.white),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () =>
                      _showForm(context, currentItem["key"]), 
                    icon: Icon(Icons.edit)),

                  IconButton(
                    onPressed: () => _deleteItem(currentItem["key"]), 
                    icon: Icon(Icons.delete)),  
                ],
              ),
            ),
          );
        }
        ),  
    );
  }
}

