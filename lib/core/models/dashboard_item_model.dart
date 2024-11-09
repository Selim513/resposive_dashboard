class DashboardItemModel {
  final String icon,name;
  
  // final bool isSelected;

  DashboardItemModel(
      {required this.icon, required this.name,
      //  required this.isSelected,
      });
}

final List<DashboardItemModel> dashboardItem = [
  DashboardItemModel(
    // isSelected: true,
    icon: 'dashboard',
    name: 'Dashboard',
  ),
  DashboardItemModel(
    icon: 'transaction',
    name: 'My Transaction',
    // isSelected: false,
  ),
  DashboardItemModel(
    icon: 'statics',
    name: 'My Statics',
    // isSelected: false,
  ),
  DashboardItemModel(
    icon: 'wallet',
    name: 'Wallet Account',
    // isSelected: false,
  ),
  DashboardItemModel(
    icon: 'investment',
    name: 'My Investments',
    // isSelected: false,
  ),
];
