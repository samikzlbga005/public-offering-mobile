import 'dart:convert';

class PublicOffer {
  String? arzName;
  String? dates;

  PublicOffer({this.arzName, this.dates});

  PublicOffer copyWith({
    String? arzName,
    String? name,
  }) {
    return PublicOffer(
      arzName: arzName ?? this.arzName,
      dates: dates ?? this.dates,
    );
  }

   Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arzName': arzName,
      'dates': dates,
    };
  }
 factory PublicOffer.fromMap(Map<String, dynamic> map) {
    return PublicOffer(
      arzName: map['arzName'] as String,
      dates: map['dates'] as String,
    );
  }
  String toJson() => json.encode(toMap());

  factory PublicOffer.fromJson(String source) =>
      PublicOffer.fromMap(json.decode(source) as Map<String, dynamic>);
  
}