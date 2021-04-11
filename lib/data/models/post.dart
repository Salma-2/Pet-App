import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:pet_app/data/models/review.dart';

class Post {
  final String postDate;
  final String postBody;
  final String postId;
  final List<String> postImagesUrls;
  final double postLongitude;
  final double postLatitude;
  final bool postStatus;
  final String postTitle;
  final String postType;
  final String postPosterId;
  final List<Review> reviews;
  Post({
     this.postDate,
     this.postBody,
     this.postId,
     this.postImagesUrls,
     this.postLongitude,
     this.postLatitude,
     this.postStatus,
     this.postTitle,
     this.postType,
     this.postPosterId,
     this.reviews,
  });

  Post copyWith({
    String postDate,
    String postBody,
    String postId,
    List<String> postImagesUrls,
    double postLongitude,
    double postLatitude,
    bool postStatus,
    String postTitle,
    String postType,
    String postPosterId,
    List<Review> reviews,
  }) {
    return Post(
      postDate: postDate ?? this.postDate,
      postBody: postBody ?? this.postBody,
      postId: postId ?? this.postId,
      postImagesUrls: postImagesUrls ?? this.postImagesUrls,
      postLongitude: postLongitude ?? this.postLongitude,
      postLatitude: postLatitude ?? this.postLatitude,
      postStatus: postStatus ?? this.postStatus,
      postTitle: postTitle ?? this.postTitle,
      postType: postType ?? this.postType,
      postPosterId: postPosterId ?? this.postPosterId,
      reviews: reviews ?? this.reviews,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'postDate': postDate,
      'postBody': postBody,
      'postId': postId,
      'postImagesUrls': postImagesUrls,
      'postLongitude': postLongitude,
      'postLatitude': postLatitude,
      'postStatus': postStatus,
      'postTitle': postTitle,
      'postType': postType,
      'postPosterId': postPosterId,
      'reviews': reviews?.map((x) => x.toMap())?.toList(),
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      postDate: map['postDate'],
      postBody: map['postBody'],
      postId: map['postId'],
      postImagesUrls: List<String>.from(map['postImagesUrls']),
      postLongitude: map['postLongitude'],
      postLatitude: map['postLatitude'],
      postStatus: map['postStatus'],
      postTitle: map['postTitle'],
      postType: map['postType'],
      postPosterId: map['postPosterId'],
      reviews: List<Review>.from(map['reviews']?.map((x) => Review.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(postDate: $postDate, postBody: $postBody, postId: $postId, postImagesUrls: $postImagesUrls, postLongitude: $postLongitude, postLatitude: $postLatitude, postStatus: $postStatus, postTitle: $postTitle, postType: $postType, postPosterId: $postPosterId, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Post &&
      other.postDate == postDate &&
      other.postBody == postBody &&
      other.postId == postId &&
      listEquals(other.postImagesUrls, postImagesUrls) &&
      other.postLongitude == postLongitude &&
      other.postLatitude == postLatitude &&
      other.postStatus == postStatus &&
      other.postTitle == postTitle &&
      other.postType == postType &&
      other.postPosterId == postPosterId &&
      listEquals(other.reviews, reviews);
  }

  @override
  int get hashCode {
    return postDate.hashCode ^
      postBody.hashCode ^
      postId.hashCode ^
      postImagesUrls.hashCode ^
      postLongitude.hashCode ^
      postLatitude.hashCode ^
      postStatus.hashCode ^
      postTitle.hashCode ^
      postType.hashCode ^
      postPosterId.hashCode ^
      reviews.hashCode;
  }
}
