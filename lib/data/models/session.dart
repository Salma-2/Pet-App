import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:pet_app/data/models/message.dart';

class Session {
  final String sessionId;
  final bool sessionIsDone;
  final List<Message> sessionMessages;
  Session({
     this.sessionId,
     this.sessionIsDone,
     this.sessionMessages,
  });

  Session copyWith({
    String sessionId,
    bool sessionIsDone,
    List<Message> sessionMessages,
  }) {
    return Session(
      sessionId: sessionId ?? this.sessionId,
      sessionIsDone: sessionIsDone ?? this.sessionIsDone,
      sessionMessages: sessionMessages ?? this.sessionMessages,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sessionId': sessionId,
      'sessionIsDone': sessionIsDone,
      'sessionMessages': sessionMessages?.map((x) => x.toMap())?.toList(),
    };
  }

  factory Session.fromMap(Map<String, dynamic> map) {
    return Session(
      sessionId: map['sessionId'],
      sessionIsDone: map['sessionIsDone'],
      sessionMessages: List<Message>.from(map['sessionMessages']?.map((x) => Message.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Session.fromJson(String source) => Session.fromMap(json.decode(source));

  @override
  String toString() => 'Session(sessionId: $sessionId, sessionIsDone: $sessionIsDone, sessionMessages: $sessionMessages)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Session &&
      other.sessionId == sessionId &&
      other.sessionIsDone == sessionIsDone &&
      listEquals(other.sessionMessages, sessionMessages);
  }

  @override
  int get hashCode => sessionId.hashCode ^ sessionIsDone.hashCode ^ sessionMessages.hashCode;
}
