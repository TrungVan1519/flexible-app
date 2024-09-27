// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuDto _$MenuDtoFromJson(Map<String, dynamic> json) => MenuDto(
      menuId: (json['menuId'] as num?)?.toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$MenuDtoToJson(MenuDto instance) => <String, dynamic>{
      'menuId': instance.menuId,
      'parentId': instance.parentId,
      'code': instance.code,
      'name': instance.name,
      'url': instance.url,
      'image': instance.image,
    };
