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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Auction type in your schema. */
class Auction extends amplify_core.Model {
  static const classType = const _AuctionModelType();
  final String id;
  final AuctionStatus? _status;
  final String? _hostUser;
  final List<Bid>? _Bids;
  final List<ItemAuction>? _items;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  AuctionModelIdentifier get modelIdentifier {
      return AuctionModelIdentifier(
        id: id
      );
  }
  
  AuctionStatus get status {
    try {
      return _status!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get hostUser {
    try {
      return _hostUser!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Bid>? get Bids {
    return _Bids;
  }
  
  List<ItemAuction>? get items {
    return _items;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Auction._internal({required this.id, required status, required hostUser, Bids, items, createdAt, updatedAt}): _status = status, _hostUser = hostUser, _Bids = Bids, _items = items, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Auction({String? id, required AuctionStatus status, required String hostUser, List<Bid>? Bids, List<ItemAuction>? items}) {
    return Auction._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      status: status,
      hostUser: hostUser,
      Bids: Bids != null ? List<Bid>.unmodifiable(Bids) : Bids,
      items: items != null ? List<ItemAuction>.unmodifiable(items) : items);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Auction &&
      id == other.id &&
      _status == other._status &&
      _hostUser == other._hostUser &&
      DeepCollectionEquality().equals(_Bids, other._Bids) &&
      DeepCollectionEquality().equals(_items, other._items);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Auction {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("status=" + (_status != null ? amplify_core.enumToString(_status)! : "null") + ", ");
    buffer.write("hostUser=" + "$_hostUser" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Auction copyWith({AuctionStatus? status, String? hostUser, List<Bid>? Bids, List<ItemAuction>? items}) {
    return Auction._internal(
      id: id,
      status: status ?? this.status,
      hostUser: hostUser ?? this.hostUser,
      Bids: Bids ?? this.Bids,
      items: items ?? this.items);
  }
  
  Auction copyWithModelFieldValues({
    ModelFieldValue<AuctionStatus>? status,
    ModelFieldValue<String>? hostUser,
    ModelFieldValue<List<Bid>>? Bids,
    ModelFieldValue<List<ItemAuction>>? items
  }) {
    return Auction._internal(
      id: id,
      status: status == null ? this.status : status.value,
      hostUser: hostUser == null ? this.hostUser : hostUser.value,
      Bids: Bids == null ? this.Bids : Bids.value,
      items: items == null ? this.items : items.value
    );
  }
  
  Auction.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _status = amplify_core.enumFromString<AuctionStatus>(json['status'], AuctionStatus.values),
      _hostUser = json['hostUser'],
      _Bids = json['Bids'] is List
        ? (json['Bids'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Bid.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _items = json['items'] is List
        ? (json['items'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ItemAuction.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'status': amplify_core.enumToString(_status), 'hostUser': _hostUser, 'Bids': _Bids?.map((Bid? e) => e?.toJson()).toList(), 'items': _items?.map((ItemAuction? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'status': _status,
    'hostUser': _hostUser,
    'Bids': _Bids,
    'items': _items,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<AuctionModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<AuctionModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final HOSTUSER = amplify_core.QueryField(fieldName: "hostUser");
  static final BIDS = amplify_core.QueryField(
    fieldName: "Bids",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Bid'));
  static final ITEMS = amplify_core.QueryField(
    fieldName: "items",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ItemAuction'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Auction";
    modelSchemaDefinition.pluralName = "Auctions";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "hostUser",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["hostUser"], name: "byAucHost")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Auction.STATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Auction.HOSTUSER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Auction.BIDS,
      isRequired: true,
      ofModelName: 'Bid',
      associatedKey: Bid.AUCTION
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Auction.ITEMS,
      isRequired: true,
      ofModelName: 'ItemAuction',
      associatedKey: ItemAuction.AUCTION
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

class _AuctionModelType extends amplify_core.ModelType<Auction> {
  const _AuctionModelType();
  
  @override
  Auction fromJson(Map<String, dynamic> jsonData) {
    return Auction.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Auction';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Auction] in your schema.
 */
class AuctionModelIdentifier implements amplify_core.ModelIdentifier<Auction> {
  final String id;

  /** Create an instance of AuctionModelIdentifier using [id] the primary key. */
  const AuctionModelIdentifier({
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
  String toString() => 'AuctionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is AuctionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}