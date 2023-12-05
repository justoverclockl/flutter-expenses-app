import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widget/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expensesList,
    required this.onRemoveExpense,
  });

  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expensesList;

  @override
  Widget build(BuildContext context) {
    // Listview return a widget that render only visible items of the list gradually
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (ctx, index) => Dismissible(
        onDismissed: (direction) => onRemoveExpense(expensesList[index]),
        key: ValueKey(expensesList[index]),
        child: ExpenseItem(expensesList[index]),
      ),
    );
  }
}
