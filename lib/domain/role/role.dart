import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.freezed.dart';
part 'role.g.dart';

@freezed
abstract class Role with _$Role {
  const factory Role({
    required String id,
    required String name,
}) = _Role;

factory Role.fromJson(Map<String, dynamic> json) =>_$RoleFromJson(json);
}
