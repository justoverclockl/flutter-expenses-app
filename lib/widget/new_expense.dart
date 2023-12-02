import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  // text editing controller do all the things for us about forms
  // you need to tell flutter to destroy this controller when the widget is not used
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  // on unmount this controller is not needed anymore
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.text,
            autocorrect: true,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: '\$ ',
              label: Text('Amount'),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                },
                child: const Text('Save Expense'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
