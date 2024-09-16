// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  // String name;
  // String email;
  // String password;
  // int phone;
  // bool gender;
  // User({
  //   required this.name,
  //   required this.email,
  //   required this.password,
  //   required this.phone,
  //   required this.gender,
  // });

  static Map currentUser = {};
  static List users = [
    {
      'name': 'ahmad',
      'email': 'ahmad@gmail.com',
      'password': '123456',
      'phone': '0799999',
      'gender': 'male'
    },
    {
      'name': 'mohammad',
      'email': 'mohammad@gmail.com',
      'password': '123456',
      'phone': '0799999',
      'gender': 'male'
    },
    {
      'name': 'ali',
      'email': 'ali@gmail.com',
      'password': '123456',
      'phone': '0799999',
      'gender': 'male'
    },
  ];

  Map getUserByEmail(String e) {
    //er? user;
    for (var i = 0; i < users.length; i++) {
      if (users[i]['email'] == e) {
        return users[i];
      }
    }
    return {};
  }
}
