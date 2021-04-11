import 'dart:convert';

import 'package:flutter/foundation.dart';

class Organization {
  final String organizationAddress;
  final String organizationDescription;
  final String organizationEmail;
  final double organizationLongitude;
  final double organizationLatitude;
  final String organizationName;
  final List<String> organizationActiveSessions;
  final double organizationBusinessHours;
  final String organizationId;
  final Map<String, String> organizationLinks;
  final double organizationOpensAt;
  final double organizationRate;
  final List<String> organizationTypeSupport;
  final List organizationVacationDays;
  final String organizationTelephone;
  final double organizationClosesAt;
  Organization({
     this.organizationAddress,
     this.organizationDescription,
     this.organizationEmail,
     this.organizationLongitude,
     this.organizationLatitude,
     this.organizationName,
     this.organizationActiveSessions,
     this.organizationBusinessHours,
     this.organizationId,
     this.organizationLinks,
     this.organizationOpensAt,
     this.organizationRate,
     this.organizationTypeSupport,
     this.organizationVacationDays,
     this.organizationTelephone,
     this.organizationClosesAt,
  });

  Organization copyWith({
    String organizationAddress,
    String organizationDescription,
    String organizationEmail,
    double organizationLongitude,
    double organizationLatitude,
    String organizationName,
    List<String> organizationActiveSessions,
    double organizationBusinessHours,
    String organizationId,
    Map<String, String> organizationLinks,
    double organizationOpensAt,
    double organizationRate,
    List<String> organizationTypeSupport,
    List organizationVacationDays,
    String organizationTelephone,
    double organizationClosesAt,
  }) {
    return Organization(
      organizationAddress: organizationAddress ?? this.organizationAddress,
      organizationDescription: organizationDescription ?? this.organizationDescription,
      organizationEmail: organizationEmail ?? this.organizationEmail,
      organizationLongitude: organizationLongitude ?? this.organizationLongitude,
      organizationLatitude: organizationLatitude ?? this.organizationLatitude,
      organizationName: organizationName ?? this.organizationName,
      organizationActiveSessions: organizationActiveSessions ?? this.organizationActiveSessions,
      organizationBusinessHours: organizationBusinessHours ?? this.organizationBusinessHours,
      organizationId: organizationId ?? this.organizationId,
      organizationLinks: organizationLinks ?? this.organizationLinks,
      organizationOpensAt: organizationOpensAt ?? this.organizationOpensAt,
      organizationRate: organizationRate ?? this.organizationRate,
      organizationTypeSupport: organizationTypeSupport ?? this.organizationTypeSupport,
      organizationVacationDays: organizationVacationDays ?? this.organizationVacationDays,
      organizationTelephone: organizationTelephone ?? this.organizationTelephone,
      organizationClosesAt: organizationClosesAt ?? this.organizationClosesAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'organizationAddress': organizationAddress,
      'organizationDescription': organizationDescription,
      'organizationEmail': organizationEmail,
      'organizationLongitude': organizationLongitude,
      'organizationLatitude': organizationLatitude,
      'organizationName': organizationName,
      'organizationActiveSessions': organizationActiveSessions,
      'organizationBusinessHours': organizationBusinessHours,
      'organizationId': organizationId,
      'organizationLinks': organizationLinks,
      'organizationOpensAt': organizationOpensAt,
      'organizationRate': organizationRate,
      'organizationTypeSupport': organizationTypeSupport,
      'organizationVacationDays': organizationVacationDays,
      'organizationTelephone': organizationTelephone,
      'organizationClosesAt': organizationClosesAt,
    };
  }

  factory Organization.fromMap(Map<String, dynamic> map) {
    return Organization(
      organizationAddress: map['organizationAddress'],
      organizationDescription: map['organizationDescription'],
      organizationEmail: map['organizationEmail'],
      organizationLongitude: map['organizationLongitude'],
      organizationLatitude: map['organizationLatitude'],
      organizationName: map['organizationName'],
      organizationActiveSessions: List<String>.from(map['organizationActiveSessions']),
      organizationBusinessHours: map['organizationBusinessHours'],
      organizationId: map['organizationId'],
      organizationLinks: Map<String, String>.from(map['organizationLinks']),
      organizationOpensAt: map['organizationOpensAt'],
      organizationRate: map['organizationRate'],
      organizationTypeSupport: List<String>.from(map['organizationTypeSupport']),
      organizationVacationDays: List.from(map['organizationVacationDays']),
      organizationTelephone: map['organizationTelephone'],
      organizationClosesAt: map['organizationClosesAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Organization.fromJson(String source) => Organization.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Organization(organizationAddress: $organizationAddress, organizationDescription: $organizationDescription, organizationEmail: $organizationEmail, organizationLongitude: $organizationLongitude, organizationLatitude: $organizationLatitude, organizationName: $organizationName, organizationActiveSessions: $organizationActiveSessions, organizationBusinessHours: $organizationBusinessHours, organizationId: $organizationId, organizationLinks: $organizationLinks, organizationOpensAt: $organizationOpensAt, organizationRate: $organizationRate, organizationTypeSupport: $organizationTypeSupport, organizationVacationDays: $organizationVacationDays, organizationTelephone: $organizationTelephone, organizationClosesAt: $organizationClosesAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Organization &&
      other.organizationAddress == organizationAddress &&
      other.organizationDescription == organizationDescription &&
      other.organizationEmail == organizationEmail &&
      other.organizationLongitude == organizationLongitude &&
      other.organizationLatitude == organizationLatitude &&
      other.organizationName == organizationName &&
      listEquals(other.organizationActiveSessions, organizationActiveSessions) &&
      other.organizationBusinessHours == organizationBusinessHours &&
      other.organizationId == organizationId &&
      mapEquals(other.organizationLinks, organizationLinks) &&
      other.organizationOpensAt == organizationOpensAt &&
      other.organizationRate == organizationRate &&
      listEquals(other.organizationTypeSupport, organizationTypeSupport) &&
      listEquals(other.organizationVacationDays, organizationVacationDays) &&
      other.organizationTelephone == organizationTelephone &&
      other.organizationClosesAt == organizationClosesAt;
  }

  @override
  int get hashCode {
    return organizationAddress.hashCode ^
      organizationDescription.hashCode ^
      organizationEmail.hashCode ^
      organizationLongitude.hashCode ^
      organizationLatitude.hashCode ^
      organizationName.hashCode ^
      organizationActiveSessions.hashCode ^
      organizationBusinessHours.hashCode ^
      organizationId.hashCode ^
      organizationLinks.hashCode ^
      organizationOpensAt.hashCode ^
      organizationRate.hashCode ^
      organizationTypeSupport.hashCode ^
      organizationVacationDays.hashCode ^
      organizationTelephone.hashCode ^
      organizationClosesAt.hashCode;
  }
}
