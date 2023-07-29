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


/** This is an auto generated class representing the OwnershipRecord type in your schema. */
class OwnershipRecord extends amplify_core.Model {
  static const classType = const _OwnershipRecordModelType();
  final String id;
  final amplify_core.TemporalDate? _possess_date;
  final String? _itemID;
  final String? _userID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  OwnershipRecordModelIdentifier get modelIdentifier {
      return OwnershipRecordModelIdentifier(
        id: id
      );
  }
  
  amplify_core.TemporalDate? get possess_date {
    return _possess_date;
  }
  
  String get itemID {
    try {
      return _itemID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get userID {
    try {
      return _userID!;
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
  
  const OwnershipRecord._internal({required this.id, possess_date, required itemID, required userID, createdAt, updatedAt}): _possess_date = possess_date, _itemID = itemID, _userID = userID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory OwnershipRecord({String? id, amplify_core.TemporalDate? possess_date, required String itemID, required String userID}) {
    return OwnershipRecord._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      possess_date: possess_date,
      itemID: itemID,
      userID: userID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnershipRecord &&
      id == other.id &&
      _possess_date == other._possess_date &&
      _itemID == other._itemID &&
      _userID == other._userID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("OwnershipRecord {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("possess_date=" + (_possess_date != null ? _possess_date!.format() : "null") + ", ");
    buffer.write("itemID=" + "$_itemID" + ", ");
    buffer.write("userID=" + "$_userID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  OwnershipRecord copyWith({amplify_core.TemporalDate? possess_date, String? itemID, String? userID}) {
    return OwnershipRecord._internal(
      id: id,
      possess_date: possess_date ?? this.possess_date,
      itemID: itemID ?? this.itemID,
      userID: userID ?? this.userID);
  }
  
  OwnershipRecord copyWithModelFieldValues({
    ModelFieldValue<amplify_core.TemporalDate?>? possess_date,
    ModelFieldValue<String>? itemID,
    ModelFieldValue<String>? userID
  }) {
    return OwnershipRecord._internal(
      id: id,
      possess_date: possess_date == null ? this.possess_date : possess_date.value,
      itemID: itemID == null ? this.itemID : itemID.value,
      userID: userID == null ? this.userID : userID.value
    );
  }
  
  OwnershipRecord.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _possess_date = json['possess_date'] != null ? amplify_core.TemporalDate.fromString(json['possess_date']) : null,
      _itemID = json['itemID'],
      _userID = json['userID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'possess_date': _possess_date?.format(), 'itemID': _itemID, 'userID': _userID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'possess_date': _possess_date,
    'itemID': _itemID,
    'userID': _userID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<OwnershipRecordModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<OwnershipRecordModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final POSSESS_DATE = amplify_core.QueryField(fieldName: "possess_date");
  static final ITEMID = amplify_core.QueryField(fieldName: "itemID");
  static final USERID = amplify_core.QueryField(fieldName: "userID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "OwnershipRecord";
    modelSchemaDefinition.pluralName = "OwnershipRecords";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["itemID"], name: "byItem"),
      amplify_core.ModelIndex(fields: const ["userID"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OwnershipRecord.POSSESS_DATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OwnershipRecord.ITEMID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OwnershipRecord.USERID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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
  });
}

class _OwnershipRecordModelType extends amplify_core.ModelType<OwnershipRecord> {
  const _OwnershipRecordModelType();
  
  @override
  OwnershipRecord fromJson(Map<String, dynamic> jsonData) {
    return OwnershipRecord.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'OwnershipRecord';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [OwnershipRecord] in your schema.
 */
class OwnershipRecordModelIdentifier implements amplify_core.ModelIdentifier<OwnershipRecord> {
  final String id;

  /** Create an instance of OwnershipRecordModelIdentifier using [id] the primary key. */
  const OwnershipRecordModelIdentifier({
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
  String toString() => 'OwnershipRecordModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is OwnershipRecordModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}