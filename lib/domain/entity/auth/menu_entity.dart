// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:v_office_base/data/dto/auth/menu_dto.dart';

class MenuEntity {
  final int? menuId;
  final int? parentId;
  final String? code;
  final String? name;
  final String? url;
  final String? image;

  MenuEntity({
    this.menuId,
    this.parentId,
    this.code,
    this.name,
    this.url,
    this.image,
  });

  MenuEntity copyWith({
    int? menuId,
    int? parentId,
    String? code,
    String? name,
    String? url,
    String? image,
  }) {
    return MenuEntity(
      menuId: menuId ?? this.menuId,
      parentId: parentId ?? this.parentId,
      code: code ?? this.code,
      name: name ?? this.name,
      url: url ?? this.url,
      image: image ?? this.image,
    );
  }
}

extension MenuEntityEx on MenuDto {
  MenuEntity get toMenuEntity => MenuEntity(
        code: code,
        image: image,
        menuId: menuId,
        name: name,
        parentId: parentId,
        url: url,
      );
}
