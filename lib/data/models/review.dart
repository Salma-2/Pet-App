import 'dart:convert';

class Review {
  final String review;
  final double rate;
  Review({
     this.review,
     this.rate,
  });

  Review copyWith({
    String review,
    double rate,
  }) {
    return Review(
      review: review ?? this.review,
      rate: rate ?? this.rate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'review': review,
      'rate': rate,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      review: map['review'],
      rate: map['rate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source));

  @override
  String toString() => 'Review(review: $review, rate: $rate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Review &&
      other.review == review &&
      other.rate == rate;
  }

  @override
  int get hashCode => review.hashCode ^ rate.hashCode;
}
