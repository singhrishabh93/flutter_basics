import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget{

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: titleController,
                    // onChanged: (value) {
                    //   titleInput = value;
                    // },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        labelText: "Title"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: amountController,
                      // onChanged: (value) {
                      //   amountInput = value;
                      // },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Amount")),
                  ElevatedButton(
                      onPressed: () {}, child: Text("Add Transaction"))
                ],
              ),
            ),
          );
  }

}