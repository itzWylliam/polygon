/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Ownership type in your schema. */
class Ownership extends amplify_core.Model {
  static const classType = const _OwnershipModelType();
  final String id;
  final bool? _possessed;
  final amplify_core.TemporalDateTime? _possessAt;
  final String? _item;
  final User? _ownerUser;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _ownershipOwnerUserId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  OwnershipModelIdentifier get modelIdentifier {
      return OwnershipModelIdentifier(
        id: id
      );
  }
  
  bool get possessed {
    try {
      return _possessed!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get possessAt {
    try {
      return _possessAt!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get item {
    try {
      return _item!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  User get ownerUser {
    try {
      return _ownerUser!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String get ownershipOwnerUserId {
    try {
      return _ownershipOwnerUserId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Ownership._internal({required this.id, required possessed, required possessAt, required item, required ownerUser, createdAt, updatedAt, required ownershipOwnerUserId}): _possessed = possessed, _possessAt = possessAt, _item = item, _ownerUser = ownerUser, _createdAt = createdAt, _updatedAt = updatedAt, _ownershipOwnerUserId = ownershipOwnerUserId;
  
  factory Ownership({String? id, required bool possessed, required amplify_core.TemporalDateTime possessAt, required String item, required User ownerUser, required String ownershipOwnerUserId}) {
    return Ownership._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      possessed: possessed,
      possessAt: possessAt,
      item: item,
      ownerUser: ownerUser,
      ownershipOwnerUserId: ownershipOwnerUserId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ownership &&
      id == other.id &&
      _possessed == other._possessed &&
      _possessAt == other._possessAt &&
      _item == other._item &&
      _ownerUser == other._ownerUser &&
      _ownershipOwnerUserId == other._ownershipOwnerUserId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Ownership {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("possessed=" + (_possessed != null ? _possessed!.toString() : "null") + ", ");
    buffer.write("possessAt=" + (_possessAt != null ? _possessAt!.format() : "null") + ", ");
    buffer.write("item=" + "$_item" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("ownershipOwnerUserId=" + "$_ownershipOwnerUserId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Ownership copyWith({bool? possessed, amplify_core.TemporalDateTime? possessAt, String? item, User? ownerUser, String? ownershipOwnerUserId}) {
    return Ownership._internal(
      id: id,
      possessed: possessed ?? this.possessed,
      possessAt: possessAt ?? this.possessAt,
      item: item ?? this.item,
      ownerUser: ownerUser ?? this.ownerUser,
      ownershipOwnerUserId: ownershipOwnerUserId ?? this.ownershipOwnerUserId);
  }
  
  Ownership copyWithModelFieldValues({
    ModelFieldValue<bool>? possessed,
    ModelFieldValue<amplify_core.TemporalDateTime>? possessAt,
    ModelFieldValue<String>? item,
    ModelFieldValue<User>? ownerUser,
    ModelFieldValue<String>? ownershipOwnerUserId
  }) {
    return Ownership._internal(
      id: id,
      possessed: possessed == null ? this.possessed : possessed.value,
      possessAt: possessAt == null ? this.possessAt : possessAt.value,
      item: item == null ? this.item : item.value,
      ownerUser: ownerUser == null ? this.ownerUser : ownerUser.value,
      ownershipOwnerUserId: ownershipOwnerUserId == null ? this.ownershipOwnerUserId : ownershipOwnerUserId.value
    );
  }
  
  Ownership.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _possessed = json['possessed'],
      _possessAt = json['possessAt'] != null ? amplify_core.TemporalDateTime.fromString(json['possessAt']) : null,
      _item = json['item'],
      _ownerUser = json['ownerUser']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['ownerUser']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _ownershipOwnerUserId = json['ownershipOwnerUserId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'possessed': _possessed, 'possessAt': _possessAt?.format(), 'item': _item, 'ownerUser': _ownerUser?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'ownershipOwnerUserId': _ownershipOwnerUserId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'possessed': _possessed,
    'possessAt': _possessAt,
    'item': _item,
    'ownerUser': _ownerUser,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'ownershipOwnerUserId': _ownershipOwnerUserId
  };

  static final amplify_core.QueryModelIdentifier<OwnershipModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<OwnershipModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final POSSESSED = amplify_core.QueryField(fieldName: "possessed");
  static final POSSESSAT = amplify_core.QueryField(fieldName: "possessAt");
  static final ITEM = amplify_core.QueryField(fieldName: "item");
  static final OWNERUSER = amplify_core.QueryField(
    fieldName: "ownerUser",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final OWNERSHIPOWNERUSERID = amplify_core.QueryField(fieldName: "ownershipOwnerUserId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Ownership";
    modelSchemaDefinition.pluralName = "Ownerships";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "ownerUser",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["item"], name: "byItem")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ownership.POSSESSED,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ownership.POSSESSAT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ownership.ITEM,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Ownership.OWNERUSER,
      isRequired: true,
      ofModelName: 'User',
      associatedKey: User.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ownership.OWNERSHIPOWNERUSERID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _OwnershipModelType extends amplify_core.ModelType<Ownership> {
  const _OwnershipModelType();
  
  @override
  Ownership fromJson(Map<String, dynamic> jsonData) {
    return Ownership.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Ownership';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Ownership] in your schema.
 */
class OwnershipModelIdentifier implements amplify_core.ModelIdentifier<Ownership> {
  final String id;

  /** Create an instance of OwnershipModelIdentifier using [id] the primary key. */
  const OwnershipModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'OwnershipModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is OwnershipModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}