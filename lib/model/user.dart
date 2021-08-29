class User {
  String username;
  String password;

  User({required this.username, required this.password});
}

List<User> activeUser = [
  User(username: "farhan", password: "farhan"),
  User(username: "berlian", password: "berlian")
];

void getIndex(String username, String password) {
  for (var user in activeUser) {
    if (username == user.username && password == user.password) {
      
    }
  }
}