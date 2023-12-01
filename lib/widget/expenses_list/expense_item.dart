import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            // now we need 2 elements in a row
            Row(
              children: [
                // to allow only 2 digits 12.3433 -> 12.34
                // escape the dollar as is a special injection char
                Text('\$ ${expense.amount.toStringAsFixed(2)}'),
                // now we need a row to print the result on the right grouped separated with a spacer
                // take all the space that is available between the widgets
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
