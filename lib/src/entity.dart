import 'audit.dart';
import 'metadata.dart';

abstract class Entity {
  final String id;
  final Audit audit;
  final Metadata metadata;

  const Entity({
    required this.id,
    required this.audit,
    required this.metadata,
  });
}
