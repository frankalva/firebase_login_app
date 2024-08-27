import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userId;
  final String email;
  final String name;

  const MyUserEntity(
      {required this.userId, required this.email, required this.name});

  //Convert the object to map
  Map<String, Object?> toDocument() {
    return {'userId': userId, 'email': email, 'name': name};
  }

  //Received a map and create a new entity
  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
        userId: doc['userId'], email: doc['email'], name: doc['name']);
  }

  @override
  List<Object?> get props => [];
}
