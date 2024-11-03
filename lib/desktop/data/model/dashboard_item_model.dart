class DashboardItemModel {
  final String icon;
  final String name;

  DashboardItemModel({
    required this.icon,
    required this.name,
  });
}

final List<DashboardItemModel> dashboardItem = [
  DashboardItemModel(
    icon: 'dashboard',
    name: 'Dashboard',
  ),
  DashboardItemModel(
    icon: 'transaction',
    name: 'My Transaction',
  ),
  DashboardItemModel(
    icon: 'statics',
    name: 'My Statics',
  ),
  DashboardItemModel(
    icon: 'wallet',
    name: 'Wallet Account',
  ),
  DashboardItemModel( 
    icon: 'investment',
    name: 'My Investments',
  ),
];
