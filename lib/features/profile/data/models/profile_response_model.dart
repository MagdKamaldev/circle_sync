import 'package:json_annotation/json_annotation.dart';
part 'profile_response_model.g.dart';

@JsonSerializable()
class ProfileResponseModel {
  @JsonKey(name: 'user')
  UserProfile? userProfile;

  ProfileResponseModel({this.userProfile});

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseModelToJson(this);
}

@JsonSerializable()
class UserProfile {
  String? id;
  @JsonKey(name: 'firstName')
  String? firstName;
  @JsonKey(name: 'lastName')
  String? lastName;
  @JsonKey(name: 'profile_img')
  String? profileImg;
  List<dynamic>? posts;
  bool? isFriend;
  bool? isRequested;

  UserProfile({
    this.id,
    this.firstName,
    this.lastName,
    this.profileImg,
    this.posts,
    this.isFriend,
    this.isRequested,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}