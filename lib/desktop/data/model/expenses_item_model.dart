class ExpensesItemModel {
  final String title, date, amnount, icon;

  ExpensesItemModel({
    required this.title,
    required this.date,
    required this.amnount,
    required this.icon,
  });
}

List<ExpensesItemModel> expensesItemList = [
  ExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      amnount: '\$20,129',
      icon: 'moneys'),
  ExpensesItemModel(
      title: 'Income',
      date: 'April 2022',
      amnount: '\$20,129',
      icon: 'card-receive'),
  ExpensesItemModel(
      title: 'Expenses',
      date: 'April 2022',
      amnount: '\$20,129',
      icon: 'card-send'),
];
