class Audit {
  final String createdBy;
  final DateTime updatedAt;
  final DateTime createdAt;
  final bool deleted;

  const Audit({
    required this.createdBy,
    required this.updatedAt,
    required this.createdAt,
    this.deleted = false,
  });

  Audit.forCreation(this.createdBy)
      : deleted = false,
        createdAt = DateTime.now(),
        updatedAt = DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      'createdBy': createdBy,
      'updatedAt': updatedAt,
      'createdAt': createdAt,
      'deleted': deleted,
    };
  }

  factory Audit.fromMap(Map<String, dynamic> map) {
    return Audit(
      createdBy: map['createdBy'],
      updatedAt: map['updatedAt'],
      createdAt: map['createdAt'],
      deleted: map['deleted'],
    );
  }

  @override
  String toString() {
    return 'Audit(createdBy: $createdBy, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Audit &&
        other.createdBy == createdBy &&
        other.updatedAt == updatedAt &&
        other.createdAt == createdAt &&
        other.deleted == deleted;
  }

  @override
  int get hashCode {
    return createdBy.hashCode ^
        updatedAt.hashCode ^
        createdAt.hashCode ^
        deleted.hashCode;
  }
}
