class Audit {
  final String createdBy;
  final DateTime updatedAt;
  final DateTime createdAt;
  final bool deleted;

  Audit({
    String? createdBy,
    DateTime? updatedAt,
    DateTime? createdAt,
    this.deleted = false,
  })  : createdBy = createdBy ?? '',
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  // TODO createdBy could have the default user there
  Audit.forCreation(this.createdBy)
      : deleted = false,
        createdAt = DateTime.now(),
        updatedAt = DateTime.now();

  @override
  String toString() {
    return 'Audit(createdBy: $createdBy, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

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
}
