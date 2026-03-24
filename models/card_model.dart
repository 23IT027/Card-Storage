class LoyaltyCard {
  String id;
  String name;
  String cardNumber;
  String expiryDate;
  DateTime updatedAt;
  bool isSynced;

  LoyaltyCard({
    required this.id,
    required this.name,
    required this.cardNumber,
    required this.expiryDate,
    required this.updatedAt,
    this.isSynced = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'cardNumber': cardNumber,
      'expiryDate': expiryDate,
      'updatedAt': updatedAt.toIso8601String(),
      'isSynced': isSynced,
    };
  }

  factory LoyaltyCard.fromMap(Map map) {
    return LoyaltyCard(
      id: map['id'],
      name: map['name'],
      cardNumber: map['cardNumber'],
      expiryDate: map['expiryDate'],
      updatedAt: DateTime.parse(map['updatedAt']),
      isSynced: map['isSynced'],
    );
  }
}