class User {
  final String name;

  const User(this.name);

  factory User.fromJson(Map<String, dynamic> json) => User(json["name"]);
}

class Message {
  final String message;

  const Message(this.message);

  factory Message.fromJson(Map<String, dynamic> json) => Message(json["message"]);
}