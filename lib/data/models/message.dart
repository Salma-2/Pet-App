import 'dart:convert';

class Message {
  final String senderID;
  final String msgTxt;
  final String msgTime;
  Message({
     this.senderID,
     this.msgTxt,
     this.msgTime,
  });

  Message copyWith({
    String senderID,
    String msgTxt,
    String msgTime,
  }) {
    return Message(
      senderID: senderID ?? this.senderID,
      msgTxt: msgTxt ?? this.msgTxt,
      msgTime: msgTime ?? this.msgTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'senderID': senderID,
      'msgTxt': msgTxt,
      'msgTime': msgTime,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      senderID: map['senderID'],
      msgTxt: map['msgTxt'],
      msgTime: map['msgTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) => Message.fromMap(json.decode(source));

  @override
  String toString() => 'Message(senderID: $senderID, msgTxt: $msgTxt, msgTime: $msgTime)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Message &&
      other.senderID == senderID &&
      other.msgTxt == msgTxt &&
      other.msgTime == msgTime;
  }

  @override
  int get hashCode => senderID.hashCode ^ msgTxt.hashCode ^ msgTime.hashCode;
}
