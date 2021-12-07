import 'audit.dart';
import 'metadata.dart';

abstract class Entity {
  final String id;
  final Audit audit;
  final Metadata metadata;

  const Entity(String? id, this.audit, this.metadata) : id = id ?? '';
}
