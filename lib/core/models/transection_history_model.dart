class TransectionHistoryModel {
  final String title, date, amount;

  TransectionHistoryModel(
      {required this.title, required this.date, required this.amount});
}

final List<TransectionHistoryModel> transectionList = [
  TransectionHistoryModel(
      title: 'Cash Withdrawal', date: '13 Apr, 2024', amount: '\$20,129'),
  TransectionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2024 at 3:30 PM',
      amount: '\$20,000'),
  TransectionHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2024 at 3:30 PM',
      amount: '\$20,000')
];
