class UserDetailModel {
  final String title, image, subtitle;

  UserDetailModel(
      {required this.title, required this.image, required this.subtitle});
}

List<UserDetailModel> userList = [
  UserDetailModel(
      title: 'Madrani Andi', image: 'person1', subtitle: 'Madraniadi20@gmail'),
  UserDetailModel(
      title: 'Josua Nunito',
      image: 'person2',
      subtitle: 'Josh Nunito@gmail.com'),
  UserDetailModel(
      title: 'Madrani miechale',
      image: 'person3',
      subtitle: 'Madraniadi10@gmail.com'),
];
