class Metadata {
  final bool hasPendingWrites;

  Metadata({
    required this.hasPendingWrites,
  });

  Metadata.forCreation() : hasPendingWrites = true;

  Map<String, dynamic> toMap() {
    return {
      'hasPendingWrites': hasPendingWrites,
    };
  }

  factory Metadata.fromMap(Map<String, dynamic> map) {
    return Metadata(
      hasPendingWrites: map['hasPendingWrites'],
    );
  }

  @override
  String toString() => 'Metadata(hasPendingWrites: $hasPendingWrites)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Metadata && other.hasPendingWrites == hasPendingWrites;
  }

  @override
  int get hashCode => hasPendingWrites.hashCode;
}
