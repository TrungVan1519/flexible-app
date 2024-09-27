// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:v_office_base/data/dto/auth/menu_action_dto.dart';

class MenuActionEntity {
  final int? menuId;
  final String? name;
  final String? codeAction;
  final String? nameAction;
  final String? urlApiAction;

  MenuActionEntity({
    this.menuId,
    this.name,
    this.codeAction,
    this.nameAction,
    this.urlApiAction,
  });

  MenuActionEntity copyWith({
    int? menuId,
    String? name,
    String? codeAction,
    String? nameAction,
    String? urlApiAction,
  }) {
    return MenuActionEntity(
      menuId: menuId ?? this.menuId,
      name: name ?? this.name,
      codeAction: codeAction ?? this.codeAction,
      nameAction: nameAction ?? this.nameAction,
      urlApiAction: urlApiAction ?? this.urlApiAction,
    );
  }
}

extension MenuActionEntityEx on MenuActionDto {
  MenuActionEntity get toMenuActionEntity => MenuActionEntity(
        codeAction: codeAction,
        menuId: menuId,
        name: name,
        nameAction: nameAction,
        urlApiAction: urlApiAction,
      );
}
