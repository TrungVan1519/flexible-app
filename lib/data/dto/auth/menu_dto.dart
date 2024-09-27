import 'package:json_annotation/json_annotation.dart';

part 'menu_dto.g.dart';

@JsonSerializable()
class MenuDto {
  final int? menuId;
  final int? parentId;
  final String? code;
  final String? name;
  final String? url;
  final String? image;

  MenuDto({
    this.menuId,
    this.parentId,
    this.code,
    this.name,
    this.url,
    this.image,
  });

  @override
  Map<String, dynamic> toJson() => _$MenuDtoToJson(this);

  factory MenuDto.fromJson(Map<String, dynamic> json) =>
      _$MenuDtoFromJson(json);
}
