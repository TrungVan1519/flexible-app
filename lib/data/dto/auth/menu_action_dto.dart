import 'package:json_annotation/json_annotation.dart';
part 'menu_action_dto.g.dart';

@JsonSerializable()
class MenuActionDto {
  final int? menuId;
  final String? name;
  final String? codeAction;
  final String? nameAction;
  final String? urlApiAction;

  MenuActionDto({
    this.menuId,
    this.name,
    this.codeAction,
    this.nameAction,
    this.urlApiAction,
  });

  @override
  Map<String, dynamic> toJson() => _$MenuActionDtoToJson(this);

  factory MenuActionDto.fromJson(Map<String, dynamic> json) =>
      _$MenuActionDtoFromJson(json);
}
