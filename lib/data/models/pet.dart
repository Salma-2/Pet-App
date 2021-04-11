import 'dart:convert';

class Pet {
  final String petBirthday;
  final String petNotes;
  final String petAge;
  final String petBreed;
  final String petColor;
  final String petGender;
  final String petName;
  final String petImageUrl;
  final String petSize;
  final String petSpecies;
  
  Pet({
     this.petBirthday,
     this.petNotes,
     this.petAge,
     this.petBreed,
     this.petColor,
     this.petGender,
     this.petName,
     this.petImageUrl,
     this.petSize,
     this.petSpecies,
  });

  Pet copyWith({
    String petBirthday,
    String petNotes,
    String petAge,
    String petBreed,
    String petColor,
    String petGender,
    String petName,
    String petImageUrl,
    String petSize,
  }) {
    return Pet(
      petBirthday: petBirthday ?? this.petBirthday,
      petNotes: petNotes ?? this.petNotes,
      petAge: petAge ?? this.petAge,
      petBreed: petBreed ?? this.petBreed,
      petColor: petColor ?? this.petColor,
      petGender: petGender ?? this.petGender,
      petName: petName ?? this.petName,
      petImageUrl: petImageUrl ?? this.petImageUrl,
      petSize: petSize ?? this.petSize,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'petBirthday': petBirthday,
      'petNotes': petNotes,
      'petAge': petAge,
      'petBreed': petBreed,
      'petColor': petColor,
      'petGender': petGender,
      'petName': petName,
      'petImageUrl': petImageUrl,
      'petSize': petSize,
    };
  }

  factory Pet.fromMap(Map<String, dynamic> map) {
    return Pet(
      petBirthday: map['petBirthday'],
      petNotes: map['petNotes'],
      petAge: map['petAge'],
      petBreed: map['petBreed'],
      petColor: map['petColor'],
      petGender: map['petGender'],
      petName: map['petName'],
      petImageUrl: map['petImageUrl'],
      petSize: map['petSize'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Pet.fromJson(String source) => Pet.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Pet(petBirthday: $petBirthday, petNotes: $petNotes, petAge: $petAge, petBreed: $petBreed, petColor: $petColor, petGender: $petGender, petName: $petName, petImageUrl: $petImageUrl, petSize: $petSize)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pet &&
        other.petBirthday == petBirthday &&
        other.petNotes == petNotes &&
        other.petAge == petAge &&
        other.petBreed == petBreed &&
        other.petColor == petColor &&
        other.petGender == petGender &&
        other.petName == petName &&
        other.petImageUrl == petImageUrl &&
        other.petSize == petSize;
  }

  @override
  int get hashCode {
    return petBirthday.hashCode ^
        petNotes.hashCode ^
        petAge.hashCode ^
        petBreed.hashCode ^
        petColor.hashCode ^
        petGender.hashCode ^
        petName.hashCode ^
        petImageUrl.hashCode ^
        petSize.hashCode;
  }
}
