// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_action_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuActionDto _$MenuActionDtoFromJson(Map<String, dynamic> json) =>
    MenuActionDto(
      menuId: (json['menuId'] as num?)?.toInt(),
      name: json['name'] as String?,
      codeAction: json['codeAction'] as String?,
      nameAction: json['nameAction'] as String?,
      urlApiAction: json['urlApiAction'] as String?,
    );

Map<String, dynamic> _$MenuActionDtoToJson(MenuActionDto instance) =>
    <String, dynamic>{
      'menuId': instance.menuId,
      'name': instance.name,
      'codeAction': instance.codeAction,
      'nameAction': instance.nameAction,
      'urlApiAction': instance.urlApiAction,
    };
