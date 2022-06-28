import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

class Post {
  Post({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  int postId;
  int id;
  String name;
  String email;
  String body;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );
}




//  class Post {
//   Post({
//     required this.page,
//     required this.id,
//     required this.title,
//     required this.body,
//   });

//   int page;
//   int id;
//   String title;
//   String body;

//   factory Post.fromMap(Map<String, dynamic> json) => Post(
//         page: json["page"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//       );
// }

