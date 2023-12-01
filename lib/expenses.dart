import 'package:expense_app/widget/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

import 'models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'New Car',
      amount: 198.48,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar reserve the space for camera and phone actions and include a bar for buttons...
      appBar: AppBar(
        title: const Text(
          'Expense Tracker App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('chart'),
          Expanded(
            child: ExpensesList(
              expensesList: _registeredExpenses,
            ),
          )
        ],
      ),
    );
  }
}
